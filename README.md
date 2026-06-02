# LLM-Powered AI Governance Support Chatbot for Financial Institutions

> An LLM-based RAG chatbot for financial institution AI Review Committees, integrating three AI governance frameworks: NIST AI RMF 1.0, EU AI Act (2024/1689), and Korean AI Basic Act.

---

## 📄 Paper

> **Anonymous submission under double-blind review**
> *Journal withheld for review*

---

## 🔍 Overview

This repository contains the full experimental pipeline for an LLM-powered RAG chatbot designed to support AI governance decision-making in financial institutions. The system integrates three regulatory frameworks and evaluates chatbot responses across a four-axis governance evaluation framework (G1~G4).

**Key contributions:**
- A **cross-regulatory mapping framework** across 18 governance dimensions (NIST AI RMF × EU AI Act × Korean AI Basic Act)
- A **domain-specific Q&A dataset** (N=300) covering financial AI governance scenarios
- A **four-axis governance evaluation framework** (G1: Accuracy, G2: Safety, G3: Transparency, G4: Compliance)
- Empirical comparison of **Baseline vs. RAG** inference conditions across three regulatory corpora

---

## 🗂 Repository Structure

```
financial_ai_governance/
│
├── data/
│   ├── raw/                          # Original Q&A JSON files (N=300)
│   │   ├── nist_dataset_001_050.json
│   │   ├── nist_dataset_051_100.json
│   │   ├── kr_aibasicact_dataset_101_150.json
│   │   ├── kr_aibasicact_dataset_151_200.json
│   │   ├── eu_aiact_dataset_201_250.json
│   │   └── eu_aiact_dataset_251_300.json
│   ├── processed/                    # Merged dataset (output of Notebook 01)
│   └── regulations/                  # Regulatory source documents (English MD)
│       ├── nist_rmf_md.md
│       ├── kr_aibasicact_md.md
│       └── eu_aiact_articles.md
│
├── notebooks/
│   ├── 01_data_merge_and_eda.ipynb   # Dataset merge & exploratory analysis
│   ├── 02_rag_pipeline.ipynb         # ChromaDB vector store construction
│   ├── 03_llm_inference.ipynb        # Baseline & RAG inference (gpt-4o-mini)
│   ├── 04_evaluation_g1_g4.ipynb     # G1~G4 automated evaluation
│   ├── 05_deepeval_validation.ipynb  # DeepEval validity verification
│   ├── 06_llm_as_judge.ipynb         # LLM-as-Judge quality evaluation
│   └── 07_governance_score.ipynb     # Composite governance score & visualization
│
├── prompts/                          # Prompt templates
│   ├── system_prompt_chatbot.txt
│   ├── eval_prompt_g1_accuracy.txt
│   ├── eval_prompt_g2_safety.txt
│   ├── eval_prompt_g3_transparency.txt
│   ├── eval_prompt_g4_compliance.txt
│   └── llm_as_judge_prompt.txt
│
├── src/                              # Utility modules
│   ├── data_loader.py
│   ├── rag_builder.py
│   ├── llm_client.py
│   ├── evaluator.py
│   └── visualizer.py
│
├── results/                          # Experimental outputs (generated)
│   ├── responses/                    # LLM responses (baseline & RAG)
│   ├── scores/                       # G1~G4, DeepEval, LLM-as-Judge scores
│   ├── tables/                       # Paper tables (Table 2~9)
│   └── figures/                      # Paper figures (Figure 2~12)
│
├── vectordb/                         # ChromaDB persistent stores (generated)
│
├── .env.example                      # Environment variable template
├── requirements_llm.txt              # Dependencies for llm_env
├── requirements_deepeval.txt         # Dependencies for deepeval_env
└── README.md
```

---

## 🧪 Experimental Setup

| Item | Configuration |
|---|---|
| LLM | gpt-4o-mini |
| Embedding | text-embedding-3-small |
| Vector DB | ChromaDB (persistent) |
| Chunking | MarkdownHeaderTextSplitter |
| RAG Top-k | 3 |
| Temperature | 0.0 |
| Evaluation | G1~G4 automated + DeepEval + LLM-as-Judge |
| Dataset | N=300 (100 per regulation) |
| Conditions | Baseline (no RAG) vs. RAG |

---

## 📊 Dataset

The Q&A dataset (N=300) covers three regulatory frameworks across six financial domains:

| Regulation | N | Difficulty | Financial Domain |
|---|---|---|---|
| NIST AI RMF 1.0 | 100 | basic/intermediate/advanced | lending, insurance, investment, fraud, compliance, common |
| Korean AI Basic Act | 100 | basic/intermediate/advanced | lending, insurance, investment, fraud, compliance, common |
| EU AI Act (2024/1689) | 100 | basic/intermediate/advanced | lending, insurance, investment, fraud, compliance, common |

Each record contains: `id`, `scenario_id`, `regulation`, `function`, `category`, `subcategory`, `difficulty`, `financial_domain`, `risk_level`, `source_section`, `question`, `ground_truth`, `legal_basis`, `governance_axis`, `notes`

---

## 🔬 Governance Evaluation Framework (G1~G4)

| Axis | Name | Weight | Description |
|---|---|---|---|
| G1 | Accuracy | 0.30 | Factual correctness vs. ground truth |
| G2 | Safety | 0.25 | Risk identification, human oversight recommendation |
| G3 | Transparency | 0.25 | Regulatory citation accuracy, AI disclosure |
| G4 | Compliance | 0.20 | Regulatory requirement coverage |

**Composite Score:** `governance_score × 0.70 + judge_score_norm × 0.30`

---

## 📈 Key Results

### Composite Governance Score (Baseline vs. RAG)

| Condition | NIST AI RMF | Korean AI Basic Act | EU AI Act | Overall |
|---|---|---|---|---|
| Baseline | 0.761 | 0.748 | 0.777 | 0.762 |
| RAG | 0.788 | 0.841 | 0.819 | **0.816** |
| Δ | +0.027 | +0.093 | +0.042 | **+0.054** |

**Overall RAG improvement: +7.10%**

### G-Axis Highlights

- **G3 Transparency** showed the largest RAG improvement (Korean AI Basic Act: Δ+0.204)
- **G2 Safety** was consistently high across both conditions (Baseline: 0.928~0.936)
- **Korean AI Basic Act** benefited most from RAG across all axes — supporting the necessity of multi-regulatory integration

### DeepEval Validity (N=180, stratified sample)

| Condition | AnswerRelevancy | Pass Rate | Faithfulness (RAG) | Pass Rate |
|---|---|---|---|---|
| Baseline | 0.943~0.972 | 100% | N/A | N/A |
| RAG | 0.944~0.972 | 100% | 0.863~0.993 | 96.6~100% |

---

## ⚙️ Setup

### 1. Clone the repository

```bash
git clone https://github.com/[anonymous]/[repository-name].git
cd [repository-name]
```

### 2. Environment setup (Windows Anaconda)

Two separate conda environments are required:

```bash
# Environment 1: LLM inference & evaluation (Notebooks 01~04, 06~07)
conda create -n llm_env python=3.11 -y
conda activate llm_env
pip install jupyter notebook ipykernel pandas numpy python-dotenv tqdm scikit-learn "openai>=1.30.0" langchain langchain-openai langchain-community langchain-text-splitters langchain-chroma chromadb faiss-cpu tiktoken matplotlib seaborn plotly
python -m ipykernel install --user --name llm_env --display-name "Python (llm_env)"

# Environment 2: DeepEval validation (Notebook 05)
conda create -n deepeval_env python=3.11 -y
conda activate deepeval_env
pip install jupyter notebook ipykernel pandas numpy python-dotenv tqdm "openai>=1.30.0" deepeval
python -m ipykernel install --user --name deepeval_env --display-name "Python (deepeval_env)"
```

### 3. Configure API key

```bash
cp .env.example .env
# Edit .env and add your OpenAI API key:
# OPENAI_API_KEY=sk-...
# LLM_MODEL=gpt-4o-mini
```

### 4. Run notebooks in order

| Notebook | Kernel | Description |
|---|---|---|
| 01_data_merge_and_eda | llm_env | Dataset merge & EDA |
| 02_rag_pipeline | llm_env | Build ChromaDB vector stores |
| 03_llm_inference | llm_env | Run Baseline & RAG inference |
| 04_evaluation_g1_g4 | llm_env | G1~G4 automated evaluation |
| 05_deepeval_validation | **deepeval_env** | DeepEval validity check |
| 06_llm_as_judge | llm_env | LLM-as-Judge quality evaluation |
| 07_governance_score | llm_env | Composite score & visualization |

---

## 💰 Estimated API Cost

| Notebook | API Calls | Tokens | Estimated Cost |
|---|---|---|---|
| 03 Inference (Baseline) | 300 | 188,812 | $0.03 |
| 03 Inference (RAG) | 300 | 613,318 | $0.09 |
| 04 G1~G4 Evaluation | 2,400 | ~480,000 | ~$0.07 |
| 05 DeepEval | ~540 | ~180,000 | ~$0.03 |
| 06 LLM-as-Judge | 600 | 799,653 | $0.12 |
| **Total** | **~4,140** | **~2,260,000** | **~$0.34** |

*Based on gpt-4o-mini pricing as of 2025.*

---

## 📋 Dependencies

**llm_env:**
```
openai>=1.30.0
langchain, langchain-openai, langchain-community
langchain-text-splitters, langchain-chroma
chromadb, faiss-cpu, tiktoken
pandas, numpy, matplotlib, seaborn, plotly
python-dotenv, tqdm, scikit-learn
```

**deepeval_env:**
```
openai>=1.30.0
deepeval
pandas, numpy, python-dotenv, tqdm
```

---

## ⚠️ Notes

- `vectordb/` directory is generated by Notebook 02 and excluded from the repository (`.gitignore`)
- `results/` directory is generated by Notebooks 03~07 and excluded from the repository
- All notebooks use `temperature=0.0` for reproducibility
- The dataset uses financial AI governance scenarios (S001~S091) mapped across three regulations

---

## 📜 License

This repository is released for academic reproducibility purposes.
The regulatory source documents (NIST AI RMF, EU AI Act, Korean AI Basic Act) are publicly available government documents.

---

## 🔗 References

- NIST. (2023). *AI Risk Management Framework (AI RMF 1.0)*. https://doi.org/10.6028/NIST.AI.100-1
- European Parliament. (2024). *Regulation (EU) 2024/1689* (EU AI Act). Official Journal of the EU.
- Korean Government. (2026). *Act on the Development of AI and Establishment of Trust Foundation* (Law No. 21311).
- Confident AI. (2023). *DeepEval: The open-source LLM evaluation framework*. https://github.com/confident-ai/deepeval
- Zheng et al. (2023). Judging LLM-as-a-judge with MT-bench and chatbot arena. *NeurIPS 2023*.
