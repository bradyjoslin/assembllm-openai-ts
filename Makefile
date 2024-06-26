OPENAI_API_KEY := $(shell echo $$OPENAI_API_KEY)

build:
	npm run build

test:
	extism call ./dist/assembllm-openai-ts.wasm models --wasi --log-level=info
	@extism call ./dist/assembllm-openai-ts.wasm completion --allow-host=api.openai.com --input="hello" --set-config='{"api_key": "$(OPENAI_API_KEY)"}' --wasi --log-level=info