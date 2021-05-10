# docker-yamllint
Docker image based on python3.9 with installed [yamllint](https://pypi.org/project/yamllint/#history)

### Run in Docker
Run linter for all files in the current directory
```bash
docker run --rm -it -v ${PWD}:/yamllint orginux/yamllint yamllint *.y*ml
```
Change $PWD on a path in the local file system

### Run in GitLab-CI
```yaml
---
yamllint:
  image: orginux/yamllint:1.25.1
  stage: lint
  variables:
    MAX_LEN: 120
    YAMLLINT_CONFIG: "{rules: {line-length: {max: $MAX_LEN}}}"
  script:
    - yamllint -d "$YAMLLINT_CONFIG" path/to/file.yml
...
```
