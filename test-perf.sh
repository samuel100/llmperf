# Loading .env file
echo ">>> Loading .env file"
set -a
source .env
set +a

python token_benchmark_ray.py \
--model "llama-2-70b-chat" \
--mean-input-tokens 550 \
--stddev-input-tokens 0 \
--mean-output-tokens 150 \
--stddev-output-tokens 0 \
--max-num-completed-requests 10 \
--timeout 600 \
--num-concurrent-requests 2 \
--results-dir "result_outputs" \
--llm-api "azureai" \
--additional-sampling-params '{}'