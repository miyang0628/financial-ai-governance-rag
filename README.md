# LLM-Powered AI Governance Support Chatbot for Financial Institutions

> An LLM-based RAG chatbot for financial institution AI Review Committees, integrating five AI governance frameworks spanning a deliberate pre-training exposure spectrum: NIST AI RMF 1.0, EU AI Act (Regulation 2024/1689), Korean AI Basic Act (Law No. 21311), Brazil PL 2338/2023, and Japan AI Promotion Act.

---

## Paper

> **Anonymous submission under double-blind review**
> *Journal withheld for review*

---

## Overview

This repository contains the full experimental pipeline for an LLM-powered RAG chatbot designed to support AI governance decision-making in financial institutions. The system integrates five regulatory frameworks and evaluates chatbot responses across a four-axis governance evaluation framework (G1-G4).

The five frameworks are chosen to separate two variables that a naive study confounds: a regulation's **pre-training exposure** (how visible it is to an LLM from pre-training) and its **regulatory strength** (whether it imposes concrete, enforceable duties). NIST and the EU AI Act sit at the high-exposure end; the Korean AI Basic Act and Brazil PL 2338 are low-exposure but high-strength; the Japan AI Promotion Act is low-exposure and low-strength (a promotional statute with no risk classification, no financial-AI duties, and no penalties), serving as a strength control.

**Key contributions:**
- A cross-regulatory mapping framework across 18 governance dimensions
- A domain-specific Q&A dataset (N=482) covering financial AI governance scenarios across five regulatory frameworks, built on 91 shared scenarios for aligned cross-regulatory comparison
- A four-axis governance evaluation framework (G1: Accuracy, G2: Safety, G3: Transparency, G4: Compliance)
- **Two RAG-benefit pathways identified** — an *exposure pathway* (lower pre-training exposure → larger RAG benefit; corpus-frequency exposure vs RAG benefit r = -0.86 across the four non-outlier frameworks) and a *strength pathway* (a promotional statute induces systematic baseline hallucination that retrieval corrects)
- **Cross-evaluator robustness analysis** showing that LLM-as-judge Safety (G2) scoring carries an evaluator-specific bias that persists across model generation and scale
- Extended comparative experiment across six retrieval conditions: Baseline, RAG (k=1/3/5), RAG+Query Rewriting, RAG+Re-ranking
- Model-scale comparison: gpt-4o-mini vs. gpt-4o (n=90 stratified sample)

---

## Repository Structure

    financial_ai_governance/
    |
    +-- data/
    |   +-- raw/
    |   |   +-- nist_dataset_001_050.json
    |   |   +-- nist_dataset_051_100.json
    |   |   +-- kr_aibasicact_dataset_101_150.json
    |   |   +-- kr_aibasicact_dataset_151_200.json
    |   |   +-- eu_aiact_dataset_201_250.json
    |   |   +-- eu_aiact_dataset_251_300.json
    |   |   +-- br_pl2338_dataset_301_350.json          (Brazil, 50)
    |   |   +-- br_pl2338_dataset_351_391.json          (Brazil, 41)
    |   |   +-- jp_aipromotion_dataset_401_450.json     (Japan, 50)
    |   |   +-- jp_aipromotion_dataset_451_491.json     (Japan, 41)
    |   +-- processed/
    |   |   +-- dataset_final.json                      (merged, N=482)
    |   +-- regulations/
    |       +-- nist_rmf_md.md
    |       +-- kr_aibasicact_md.md
    |       +-- eu_aiact_articles.md
    |       +-- br_pl2338_articles.md                   (Brazil corpus)
    |       +-- jp_aipromotion_md.md                    (Japan corpus)
    |
    +-- notebooks/
    |   +-- 01_data_merge_and_eda.ipynb        Dataset merge and EDA
    |   +-- 02_rag_pipeline.ipynb              ChromaDB vector store construction (5 regs)
    |   +-- 03_llm_inference.ipynb             Baseline and RAG (k=3) inference
    |   +-- 04_evaluation_g1_g4.ipynb          G1-G4 automated evaluation (primary)
    |   +-- 05_deepeval_validation.ipynb       DeepEval validity verification
    |   +-- 06_llm_as_judge.ipynb              LLM-as-Judge quality evaluation
    |   +-- 07_governance_score.ipynb          Composite score and visualization
    |   +-- 08_evaluator_robustness.ipynb      Inter-evaluator robustness (gpt-4o-mini vs gpt-4o)
    |   +-- 09_rag_topk_variants.ipynb         Top-k ablation (k=1 and k=5)
    |   +-- 10_rag_query_rewriting.ipynb       RAG + LLM query rewriting
    |   +-- 11_rag_model_comparison.ipynb      Model comparison (gpt-4o-mini vs gpt-4o)
    |   +-- 12_rag_reranking.ipynb             RAG + cross-encoder re-ranking
    |   +-- 13_extended_evaluation.ipynb       Extended G1-G4 evaluation and ranking
    |   +-- 14_exposure_analysis.ipynb         Corpus-exposure vs RAG-benefit (Claim A)
    |   +-- 15_cross_evaluator.ipynb           Multi-evaluator robustness (Claim B)
    |
    +-- prompts/
    |   +-- system_prompt_chatbot.txt
    |   +-- eval_prompt_g1_accuracy.txt
    |   +-- eval_prompt_g2_safety.txt
    |   +-- eval_prompt_g3_transparency.txt
    |   +-- eval_prompt_g4_compliance.txt
    |   +-- llm_as_judge_prompt.txt
    |
    +-- src/
    |   +-- data_loader.py
    |   +-- rag_builder.py
    |   +-- llm_client.py
    |   +-- evaluator.py
    |   +-- visualizer.py
    |
    +-- results/
    |   +-- responses/
    |   +-- scores/
    |   +-- tables/
    |   +-- figures/
    |
    +-- vectordb/
    +-- .env.example
    +-- requirements_llm.txt
    +-- requirements_deepeval.txt
    +-- README.md

---

## Regulatory Frameworks and Exposure Spectrum

| Framework | Language | Legal status | Pre-training exposure | Role in design |
|---|---|---|---|---|
| NIST AI RMF 1.0 | English | In force (2023) | High | Spectrum top |
| EU AI Act 2024/1689 | English | In force (2024) | High | Spectrum top |
| Korean AI Basic Act | Korean | In force (2026) | Low | Low-exposure, high-strength |
| Brazil PL 2338/2023 | Portuguese | Senate-approved, pending Chamber | Very low | Bottom extreme (newest) |
| Japan AI Promotion Act | Japanese | In force (2025) | Low | Strength control (no duties) |

Pre-training exposure is quantified as the corpus frequency of each framework's name (English + native-language + core terms) in a public pre-training corpus. Exposure counts and measurement details are reported in the paper. Note: Brazil PL 2338 is labelled throughout as near-enacted (Senate consolidated text); Chamber amendments may alter provisions.

---

## Experimental Conditions

| Condition | N | Description |
|---|---|---|
| Baseline | 482 | gpt-4o-mini, parametric knowledge only, no retrieval |
| RAG (k=3) | 482 | RAG with top-3 chunks, primary condition |

Retrieval-architecture ablations (top-k, query rewriting, re-ranking, model-scale) were run on the original three-framework set (N=300 per condition); the two added frameworks (Brazil, Japan) were evaluated under Baseline and RAG (k=3).

**Shared configuration:**

| Item | Value |
|---|---|
| Generator LLM | gpt-4o-mini (gpt-4o for model comparison) |
| Embedding | text-embedding-3-small |
| Vector DB | ChromaDB persistent |
| Chunking | MarkdownHeaderTextSplitter section/article level |
| Temperature | 0.0 |
| Max tokens | 1,000 |
| Re-ranker | cross-encoder/ms-marco-MiniLM-L-6-v2 local, no API cost |

---

## Dataset

Dataset construction follows Design Scheme B: 91 shared financial AI governance scenarios (S001-S091) are addressed from the perspective of each regulatory framework, enabling aligned cross-regulatory comparison across identical scenarios.

| Regulation | N | Basis |
|---|---|---|
| NIST AI RMF 1.0 | 100 | Q001-Q100 |
| Korean AI Basic Act | 100 | Q101-Q200 |
| EU AI Act 2024/1689 | 100 | Q201-Q300 |
| Brazil PL 2338/2023 | 91 | Q301-Q391 (S001-S091) |
| Japan AI Promotion Act | 91 | Q401-Q491 (S001-S091) |
| **Total** | **482** | 0 ID collisions |

Each record contains: id, scenario_id, regulation, function, category, subcategory, difficulty, financial_domain, risk_level, source_section, question, ground_truth, legal_basis, governance_axis, notes

Non-English corpora (Portuguese, Japanese) were drafted with AI-assisted translation and verified by the authors against primary legal sources. Brazil provisions were confirmed against the official Senate consolidated text; Japan's promotional-statute character was confirmed against the official government outline.

---

## Governance Evaluation Framework (G1-G4)

| Axis | Name | Weight | Description |
|---|---|---|---|
| G1 | Accuracy | 0.30 | Factual correctness vs. ground truth |
| G2 | Safety | 0.25 | Risk identification, human oversight recommendation |
| G3 | Transparency | 0.25 | Regulatory citation accuracy, AI disclosure |
| G4 | Compliance | 0.20 | Regulatory requirement coverage |

S_gov = 0.30 x G1 + 0.25 x G2 + 0.25 x G3 + 0.20 x G4

---

## Key Results

### Primary Experiment: Baseline vs. RAG (k=3), Five Frameworks

| Regulation | Baseline S_gov | RAG S_gov | Delta |
|---|---|---|---|
| EU AI Act | 0.782 | 0.829 | +0.048 |
| NIST AI RMF | 0.764 | 0.784 | +0.020 |
| Korean AI Basic Act | 0.753 | 0.855 | +0.101 |
| Brazil PL 2338 | 0.750 | 0.876 | +0.126 |
| Japan AI Promotion Act | 0.341 | 0.878 | +0.537 |

### Two RAG-Benefit Pathways

**Exposure pathway.** Across the four frameworks with normal baselines (EU, NIST, Korea, Brazil), RAG benefit scales inversely with pre-training exposure: corpus-frequency exposure vs RAG benefit gives r = -0.86 (R^2 = 0.74, n=4). Brazil is the clean control — same near-zero exposure as Japan but a normal baseline (0.750) and no hallucination collapse, yet a larger RAG benefit (+0.126) than the high-exposure EU (+0.048) and NIST (+0.020). This isolates exposure from strength.

**Strength pathway (Japan).** The Japan AI Promotion Act is a promotional statute whose correct ground truth is usually "no specific duty." Without retrieval, the baseline model hallucinates non-existent obligations: 70.3% of Japan baseline items score G1 <= 0.2, versus <= 2% for every other framework. Retrieval supplies the actual "no duty" content, producing an outlier RAG benefit (+0.537) driven by hallucination correction rather than exposure. Japan is therefore reported as a separate mechanism and excluded from the exposure regression.

| Framework | Baseline hallucination rate (G1 <= 0.2) |
|---|---|
| NIST AI RMF | 0.0% |
| EU AI Act | 2.0% |
| Korean AI Basic Act | 1.0% |
| Brazil PL 2338 | 1.1% |
| Japan AI Promotion Act | 70.3% |

### Cross-Evaluator Robustness (Claim B)

The same generator (gpt-4o-mini) responses were re-scored by newer OpenAI evaluators (gpt-5.4-mini, gpt-5.4) on a stratified sample. Excluding Japan (n=40), inter-evaluator agreement by axis:

| Axis | r (4o-mini vs 5.4-mini) | r (4o-mini vs 5.4) | Mean |
|---|---|---|---|
| G1 Accuracy | +0.64 | +0.64 | +0.64 |
| G2 Safety | +0.45 | +0.21 | +0.33 |
| G3 Transparency | +0.42 | +0.51 | +0.47 |
| G4 Compliance | +0.70 | +0.65 | +0.67 |

G2 Safety shows the weakest cross-generation agreement. In mean scores, gpt-4o-mini assigns G2 = 0.955 versus 0.55-0.63 for the newer evaluators, indicating a Safety-axis inflation that persists across model generation and scale. This suggests LLM-as-judge Safety scoring is particularly vulnerable to evaluator-specific bias — a caution for automated governance-evaluation pipelines.

**Limitations of this analysis:** the stratified sample is small (n=40 excluding Japan), so axis differences are directional rather than statistically conclusive. All three evaluators are OpenAI models, so same-provider bias is not eliminated; cross-provider validation (e.g., Claude, Llama, Mistral) remains future work.

---

## Setup

### 1. Obtain the repository

The anonymized repository is available at the anonymous submission link provided with the manuscript.

### 2. Environment setup

Two separate conda environments are required.

Environment 1: LLM inference and evaluation (Notebooks 01-04, 06-15)

    conda create -n llm_env python=3.11 -y
    conda activate llm_env
    pip install jupyter notebook ipykernel pandas numpy python-dotenv tqdm scikit-learn scipy openai>=1.30.0 langchain langchain-openai langchain-community langchain-text-splitters langchain-chroma chromadb faiss-cpu tiktoken matplotlib seaborn plotly sentence-transformers
    python -m ipykernel install --user --name llm_env --display-name "Python (llm_env)"

Environment 2: DeepEval validation (Notebook 05)

    conda create -n deepeval_env python=3.11 -y
    conda activate deepeval_env
    pip install jupyter notebook ipykernel pandas numpy python-dotenv tqdm openai>=1.30.0 deepeval
    python -m ipykernel install --user --name deepeval_env --display-name "Python (deepeval_env)"

### 3. Configure API key

    cp .env.example .env

Edit .env and add:

    OPENAI_API_KEY=sk-...
    LLM_MODEL=gpt-4o-mini

### 4. Run order

Core pipeline (five frameworks):

| Notebook | Kernel | Description |
|---|---|---|
| 01_data_merge_and_eda | llm_env | Dataset merge and EDA |
| 02_rag_pipeline | llm_env | Build ChromaDB vector stores (5 regs) |
| 03_llm_inference | llm_env | Baseline and RAG (k=3) inference |
| 04_evaluation_g1_g4 | llm_env | G1-G4 automated evaluation |
| 05_deepeval_validation | deepeval_env | DeepEval validity check |
| 06_llm_as_judge | llm_env | LLM-as-Judge quality evaluation |
| 07_governance_score | llm_env | Composite score and visualization |
| 08_evaluator_robustness | llm_env | Inter-evaluator robustness (gpt-4o-mini vs gpt-4o) |
| 14_exposure_analysis | llm_env | Corpus-exposure vs RAG-benefit (Claim A) |
| 15_cross_evaluator | llm_env | Multi-evaluator robustness (Claim B) |

Retrieval-architecture ablations (original three-framework set):

| Notebook | Kernel | Description |
|---|---|---|
| 09_rag_topk_variants | llm_env | Top-k ablation: k=1 and k=5 |
| 10_rag_query_rewriting | llm_env | RAG + LLM query rewriting |
| 11_rag_model_comparison | llm_env | gpt-4o-mini vs. gpt-4o, n=90 |
| 12_rag_reranking | llm_env | RAG + cross-encoder re-ranking |
| 13_extended_evaluation | llm_env | Extended G1-G4 evaluation and ranking |

Notes: Notebook 03 must run before 09-12 (shared vector stores and response files). Notebooks 09-12 must run before 13. Notebook 14 reads scores produced by 04; Notebook 15 requires the merged response files from 03 and scores from 04.

---

## API Cost

Costs scale with the OpenAI models used and their current published rates; verify pricing before running. Approximate token volumes:

| Stage | Approx. tokens |
|---|---|
| Inference (Baseline + RAG, 5 frameworks) | ~1.5M |
| G1-G4 evaluation (5 frameworks) | ~0.6M |
| LLM-as-Judge (primary experiment) | ~0.8M |
| Retrieval ablations (top-k, rewrite, rerank) | ~2.5M |
| Model-scale comparison (gpt-4o, n=90) | ~0.2M |
| Cross-evaluator (gpt-5.4-mini, gpt-5.4; n=50) | ~0.1M |

The cross-evaluator notebook (15) calls newer, higher-priced models on a small stratified sample; total cost there is a few dollars at current rates. The model-scale comparison (11) uses gpt-4o and is the most expensive per token — confirm before running.

---

## Notes

- vectordb/ and results/ are generated by the notebooks and excluded via .gitignore
- All notebooks use temperature=0.0 for reproducibility where the model supports it. Newer evaluator models (gpt-5.4 family) use max_completion_tokens and may not accept temperature=0; Notebook 15 adapts automatically and this is disclosed in the paper's Methods.
- The Korean, Brazilian (Portuguese), and Japanese source corpora involve author translation/verification against primary legal sources; the non-English translation procedure and its limitations are documented in the paper.
- Brazil PL 2338 is near-enacted (Senate consolidated text); Chamber amendments may alter provisions. Japan article numbering is verified at the statute-structure level against the official outline.

---

## License

This repository is released for academic reproducibility purposes. The regulatory source documents are publicly available government documents.

---

## References

- NIST. (2023). AI Risk Management Framework (AI RMF 1.0). https://doi.org/10.6028/NIST.AI.100-1
- European Parliament. (2024). Regulation (EU) 2024/1689 (EU AI Act). Official Journal of the EU.
- Korean Government. (2026). Act on the Development of AI and Establishment of Trust Foundation (Law No. 21311).
- Brazil Federal Senate. (2023). PL 2338/2023 (AI regulatory framework), Senate consolidated text.
- Japan. (2025). Act on Promotion of Research and Development and Utilization of AI-related Technology.
- Tang and Yang. (2024). MultiHop-RAG: Benchmarking RAG for multi-hop queries. COLM 2024.
- Chan et al. (2024). RQ-RAG: Learning to refine queries for retrieval-augmented generation. EMNLP 2024.
- Tan et al. (2025). JudgeBench: A benchmark for evaluating LLM-based judges. ICLR 2025.
- Zheng et al. (2023). Judging LLM-as-a-judge with MT-bench and chatbot arena. NeurIPS 2023.
- Confident AI. (2023). DeepEval: The open-source LLM evaluation framework. https://github.com/confident-ai/deepeval
