# Loading .env file
echo ">>> Loading .env file"
set -a
source .env
set +a

python llm_correctness.py \
--model "llama-2-70b-chat" \
--max-num-completed-requests 10 \
--timeout 600 \
--num-concurrent-requests 2 \
--results-dir "result_outputs" \
--llm-api "azureai" \
--additional-sampling-params '{}'