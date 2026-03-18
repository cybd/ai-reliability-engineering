#!/bin/bash

curl http://localhost:3000/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "x-provider: gemini" \
  -d '{"model": "gemini-2.5-flash-lite", "messages": [{"role": "user", "content": "What is the question for answer 42?"}]}'
