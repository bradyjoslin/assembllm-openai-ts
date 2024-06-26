# assembllm OpenAI TypeScript Plug-in

[![runs_on](https://img.shields.io/badge/runs_on-Extism-4c30fc.svg?subject=runs_on&status=Extism&color=4c30fc)](https://modsurfer.dylibso.com/module?hash=a9110e703ff5c68cbf028c725851fd287ac1ef0b909b1d97c600f881e272fa8c) [![standard](https://img.shields.io/badge/standard-WASI%20(preview1)-654ff0.svg?subject=standard&status=WASI%20(preview1)&color=654ff0)](https://modsurfer.dylibso.com/module?hash=a9110e703ff5c68cbf028c725851fd287ac1ef0b909b1d97c600f881e272fa8c)

Plugin for [assembllm](https://github.com/bradyjoslin/assembllm)

Uses [Extism PDK](https://github.com/extism/js-pdk).  Doesn't require WASI.

## Building

```bash
make build
```

Built wasm file will be in `dist/`.

## Testing

```bash
make test
```

## Add to assembllm

Sample configuration update to `~/.assembllm/config.yaml`:

```yaml
  - name: openaits
    source: https://github.com/bradyjoslin/assembllm-openai-ts/releases/latest/download/assembllm-openai-ts.wasm
    hash: 
    apiKey: OPENAI_API_KEY
    url: api.openai.com
    model: gpt-4o
    wasi: true
```
