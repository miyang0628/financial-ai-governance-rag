# LLM-Powered AI Governance Support Chatbot for Financial Institutions

> An LLM-based RAG chatbot for financial institution AI Review Committees, integrating three AI governance frameworks: NIST AI RMF 1.0, EU AI Act (Regulation 2024/1689), and Korean AI Basic Act (Law No. 21311).

---

## Paper

> **Anonymous submission under double-blind review**
> *Journal withheld for review*

---

## Overview

This repository contains the full experimental pipeline for an LLM-powered RAG chatbot designed to support AI governance decision-making in financial institutions. The system integrates three regulatory frameworks and evaluates chatbot responses across a four-axis governance evaluation framework (G1-G4).

**Key contributions:**
- A cross-regulatory mapping framework across 18 governance dimensions (NIST AI RMF x EU AI Act x Korean AI Basic Act)
- A domain-specific Q&A dataset (N=300) covering financial AI governance scenarios across three regulatory frameworks
- A four-axis governance evaluation framework (G1: Accuracy, G2: Safety, G3: Transparency, G4: Compliance)
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
    |   +-- processed/
    |   +-- regulations/
    |       +-- nist_rmf_md.md
    |       +-- kr_aibasicact_md.md
    |       +-- eu_aiact_articles.md
    |
    +-- notebooks/
    |   +-- 01_data_merge_and_eda.ipynb        Dataset merge and EDA
    |   +-- 02_rag_pipeline.ipynb              ChromaDB vector store construction
    |   +-- 03_llm_inference.ipynb             Baseline and RAG (k=3) inference
    |   +-- 04_evaluation_g1_g4.ipynb          G1-G4 automated evaluation (primary)
    |   +-- 05_deepeval_validation.ipynb       DeepEval validity verification
    |   +-- 06_llm_as_judge.ipynb              LLM-as-Judge quality evaluation
    |   +-- 07_governance_score.ipynb          Composite score and visualization
    |   +-- 08_evaluator_robustness.ipynb      Inter-evaluator robustness check
    |   +-- 09_rag_topk_variants.ipynb         Top-k ablation (k=1 and k=5)
    |   +-- 10_rag_query_rewriting.ipynb       RAG + LLM query rewriting
    |   +-- 11_rag_model_comparison.ipynb      Model comparison (gpt-4o-mini vs gpt-4o)
    |   +-- 12_rag_reranking.ipynb             RAG + cross-encoder re-ranking
    |   +-- 13_extended_evaluation.ipynb       Extended G1-G4 evaluation and ranking
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
    |   |   +-- responses_baseline.json
    |   |   +-- responses_rag.json                RAG k=3 primary
    |   |   +-- responses_rag_k1.json
    |   |   +-- responses_rag_k5.json
    |   |   +-- responses_rag_rewrite.json
    |   |   +-- responses_rag_rerank.json
    |   |   +-- responses_rag_gpt4o.json
    |   |   +-- responses_rag_mini_sample.json
    |   +-- scores/
    |   |   +-- scores_all.csv                    Primary experiment
    |   |   +-- scores_extended.csv               Extended conditions
    |   |   +-- scores_merged.csv                 All conditions merged
    |   +-- tables/
    |   +-- figures/
    |
    +-- vectordb/
    +-- .env.example
    +-- requirements_llm.txt
    +-- requirements_deepeval.txt
    +-- README.md

---

## Experimental Conditions

| Condition | N | Description |
|---|---|---|
| Baseline | 300 | gpt-4o-mini, parametric knowledge only, no retrieval |
| RAG (k=1) | 300 | RAG with top-1 retrieved chunk |
| RAG (k=3) | 300 | RAG with top-3 chunks, primary condition |
| RAG (k=5) | 300 | RAG with top-5 chunks |
| RAG + Query Rewriting | 300 | LLM rewrites query before retrieval, top-3 |
| RAG + Re-ranking | 300 | Retrieve top-5, cross-encoder re-ranks to top-3 |
| RAG gpt-4o-mini (n=90) | 90 | Stratified sample, RAG k=3, gpt-4o-mini |
| RAG gpt-4o (n=90) | 90 | Stratified sample, RAG k=3, gpt-4o |

**Shared configuration:**

| Item | Value |
|---|---|
| LLM | gpt-4o-mini (gpt-4o for model comparison) |
| Embedding | text-embedding-3-small |
| Vector DB | ChromaDB persistent |
| Chunking | MarkdownHeaderTextSplitter section/article level |
| Temperature | 0.0 |
| Max tokens | 1,000 |
| Re-ranker | cross-encoder/ms-marco-MiniLM-L-6-v2 local, no API cost |

---

## Dataset

| Regulation | N | Difficulty | Avg GT Length |
|---|---|---|---|
| NIST AI RMF 1.0 | 100 | Basic 18% / Intermediate 47% / Advanced 35% | 1,308 chars |
| Korean AI Basic Act | 100 | Basic 21% / Intermediate 51% / Advanced 28% | 1,597 chars |
| EU AI Act 2024/1689 | 100 | Basic 15% / Intermediate 52% / Advanced 33% | 1,882 chars |

Each record contains: id, scenario_id, regulation, function, category, subcategory, difficulty, financial_domain, risk_level, source_section, question, ground_truth, legal_basis, governance_axis, notes

Financial domains: common (64%), lending (24%), insurance (4.3%), investment (3.3%), fraud detection (2.3%), compliance (2.0%)

Governance axis distribution: G1 11.0%, G2 20.3%, G3 18.3%, G4 50.3%

Unique scenarios: 91. Total unique functional categories: 23.

---

## Governance Evaluation Framework (G1-G4)

| Axis | Name | Weight | Description |
|---|---|---|---|
| G1 | Accuracy | 0.30 | Factual correctness vs. ground truth |
| G2 | Safety | 0.25 | Risk identification, human oversight recommendation |
| G3 | Transparency | 0.25 | Regulatory citation accuracy, AI disclosure |
| G4 | Compliance | 0.20 | Regulatory requirement coverage |

Composite Score (primary experiment):
S_comp = 0.70 x S_gov + 0.30 x S_judge_norm

where S_gov = 0.30 x G1 + 0.25 x G2 + 0.25 x G3 + 0.20 x G4

Extended conditions are reported using S_gov alone.

---

## Key Results

### Primary Experiment: Baseline vs. RAG (k=3)

| Condition | NIST AI RMF | Korean AI Basic Act | EU AI Act | Overall |
|---|---|---|---|---|
| Baseline | 0.761 | 0.748 | 0.777 | 0.762 |
| RAG (k=3) | 0.788 | 0.841 | 0.819 | 0.816 |
| Delta | +0.027 | +0.093 | +0.042 | +0.054 (+7.10%) |

### Extended Comparison: All Conditions (S_gov, N=300)

| Condition | S_gov | Delta vs Baseline |
|---|---|---|
| Baseline | 0.766 | --- |
| RAG (k=1) | 0.782 | +0.016 |
| RAG (k=3) | 0.823 | +0.057 |
| RAG (k=5) | 0.838 | +0.072 |
| RAG + Rewrite | 0.817 | +0.051 |
| RAG + Rerank | 0.815 | +0.049 |

Key finding: Retrieval depth (top-k) is the dominant performance driver. Query rewriting and re-ranking offer negligible benefit over RAG (k=3) under section-level chunking, because chunk granularity is the binding constraint.

### Top-k Ablation by Regulation (S_gov)

| Regulation | Baseline | RAG k=1 | RAG k=3 | RAG k=5 |
|---|---|---|---|---|
| NIST AI RMF | 0.764 | 0.744 | 0.785 | 0.814 |
| Korean AI Basic Act | 0.753 | 0.798 | 0.855 | 0.864 |
| EU AI Act | 0.782 | 0.805 | 0.829 | 0.835 |
| Overall | 0.766 | 0.782 | 0.823 | 0.838 |

### Model-Scale Comparison (RAG k=3, n=90)

| Model | G1 | G2 | G3 | G4 | S_gov |
|---|---|---|---|---|---|
| gpt-4o-mini | 0.724 | 0.949 | 0.867 | 0.831 | 0.837 |
| gpt-4o | 0.707 | 0.904 | 0.862 | 0.793 | 0.812 |

Note: G2 difference is attributable to evaluator-specific inflation (same model as generator and judge), not genuine safety guidance quality. G3 Transparency scores are nearly identical (0.867 vs. 0.862), confirming that citation accuracy is retrieval-driven rather than model-scale-driven.

### DeepEval Validity (n=180, primary experiment)

| Condition | AnswerRelevancy | Pass Rate | Faithfulness | Pass Rate |
|---|---|---|---|---|
| Baseline | 0.943-0.972 | 100% | N/A | N/A |
| RAG (k=3) | 0.944-0.972 | 100% | 0.863-0.993 | 96.6-100% |

---

## Setup

### 1. Clone the repository

    git clone https://github.com/miyang0628/financial-ai-governance-rag.git
    cd financial-ai-governance-rag

### 2. Environment setup

Two separate conda environments are required.

Environment 1: LLM inference and evaluation (Notebooks 01-04, 06-13)

    conda create -n llm_env python=3.11 -y
    conda activate llm_env
    pip install jupyter notebook ipykernel pandas numpy python-dotenv tqdm scikit-learn openai>=1.30.0 langchain langchain-openai langchain-community langchain-text-splitters langchain-chroma chromadb faiss-cpu tiktoken matplotlib seaborn plotly sentence-transformers
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

### 4. Run notebooks in order

Primary experiment (Notebooks 01-08):

| Notebook | Kernel | Description |
|---|---|---|
| 01_data_merge_and_eda | llm_env | Dataset merge and EDA |
| 02_rag_pipeline | llm_env | Build ChromaDB vector stores |
| 03_llm_inference | llm_env | Baseline and RAG (k=3) inference |
| 04_evaluation_g1_g4 | llm_env | G1-G4 automated evaluation |
| 05_deepeval_validation | deepeval_env | DeepEval validity check |
| 06_llm_as_judge | llm_env | LLM-as-Judge quality evaluation |
| 07_governance_score | llm_env | Composite score and visualization |
| 08_evaluator_robustness | llm_env | Inter-evaluator robustness check |

Extended experiment (Notebooks 09-13):

| Notebook | Kernel | Description |
|---|---|---|
| 09_rag_topk_variants | llm_env | Top-k ablation: k=1 and k=5 |
| 10_rag_query_rewriting | llm_env | RAG + LLM query rewriting |
| 11_rag_model_comparison | llm_env | gpt-4o-mini vs. gpt-4o, n=90 |
| 12_rag_reranking | llm_env | RAG + cross-encoder re-ranking |
| 13_extended_evaluation | llm_env | Extended G1-G4 evaluation and ranking |

Note: Notebooks 09-12 must be run before 13. Notebook 03 must be run before 09-12 (shares vector stores and response files).

---

## Estimated API Cost

Primary experiment (Notebooks 01-08):

| Notebook | Tokens | Estimated Cost |
|---|---|---|
| 03 Inference Baseline | 188,812 | $0.03 |
| 03 Inference RAG k=3 | 613,318 | $0.09 |
| 04 G1-G4 Evaluation | ~480,000 | ~$0.07 |
| 05 DeepEval | ~180,000 | ~$0.03 |
| 06 LLM-as-Judge | 799,653 | $0.12 |
| Primary Total | ~2,260,000 | ~$0.34 |

Extended experiment (Notebooks 09-13):

| Notebook | Tokens | Estimated Cost |
|---|---|---|
| 09 RAG k=1 | 319,664 | $0.05 |
| 09 RAG k=5 | 908,394 | $0.14 |
| 10 RAG + Rewrite | 697,550 | $0.10 |
| 11 RAG gpt-4o n=90 | 184,800 | $0.92 |
| 12 RAG + Rerank | 605,759 | $0.09 |
| 13 Extended Evaluation | ~1,104,000 | ~$0.17 |
| Extended Total | ~3,820,000 | ~$1.47 |

Grand Total: ~6,080,000 tokens / ~$1.81

gpt-4o-mini: $0.15/1M tokens blended rate. gpt-4o: $5.00/1M tokens blended rate. As of 2025.

---

## Dependencies

llm_env (Notebooks 01-04, 06-13):

    openai>=1.30.0
    langchain langchain-openai langchain-community
    langchain-text-splitters langchain-chroma
    chromadb faiss-cpu tiktoken
    pandas numpy matplotlib seaborn plotly
    python-dotenv tqdm scikit-learn
    sentence-transformers

deepeval_env (Notebook 05):

    openai>=1.30.0
    deepeval
    pandas numpy python-dotenv tqdm

---

## Notes

- vectordb/ is generated by Notebook 02 and excluded from the repository via .gitignore
- results/ is generated by Notebooks 03-13 and excluded from the repository
- All notebooks use temperature=0.0 for reproducibility
- The re-ranker (cross-encoder/ms-marco-MiniLM-L-6-v2) downloads automatically via sentence-transformers on first use with no additional API cost
- Notebook 11 (gpt-4o comparison) incurs approximately $0.92 in API cost; confirm before running
- The Korean AI Basic Act source corpus is an interpretive English translation prepared by the authors; no official English translation exists as of the time of writing

---

## License

This repository is released for academic reproducibility purposes. The regulatory source documents (NIST AI RMF, EU AI Act, Korean AI Basic Act) are publicly available government documents.

---

## References

- NIST. (2023). AI Risk Management Framework (AI RMF 1.0). https://doi.org/10.6028/NIST.AI.100-1
- European Parliament. (2024). Regulation (EU) 2024/1689 (EU AI Act). Official Journal of the EU.
- Korean Government. (2026). Act on the Development of AI and Establishment of Trust Foundation (Law No. 21311).
- Tang and Yang. (2024). MultiHop-RAG: Benchmarking RAG for multi-hop queries. COLM 2024.
- Chan et al. (2024). RQ-RAG: Learning to refine queries for retrieval-augmented generation. EMNLP 2024.
- Tan et al. (2025). JudgeBench: A benchmark for evaluating LLM-based judges. ICLR 2025.
- Zheng et al. (2023). Judging LLM-as-a-judge with MT-bench and chatbot arena. NeurIPS 2023.
- Confident AI. (2023). DeepEval: The open-source LLM evaluation framework. https://github.com/confident-ai/deepeval
