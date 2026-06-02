# =============================================================================
# .env.example
# Copy this file to .env and fill in your own values.
#   cp .env.example .env
# .env is listed in .gitignore and will NOT be committed to the repository.
# =============================================================================

# ── OpenAI API ────────────────────────────────────────────────────────────────
# Required: Your OpenAI API key (sk-...)
OPENAI_API_KEY=sk-your-openai-api-key-here

# LLM model used for inference and evaluation
# Default: gpt-4o-mini (recommended for cost efficiency)
# Options: gpt-4o-mini | gpt-4o | gpt-4-turbo
LLM_MODEL=gpt-4o-mini

# Embedding model used for RAG vector store construction (Notebook 02)
# Default: text-embedding-3-small
EMBED_MODEL=text-embedding-3-small
