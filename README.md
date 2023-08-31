# runtime-github-action-iac

[![Action test Ubuntu](https://github.com/stack-spot/runtime-github-action-ping/actions/workflows/action-test-ubuntu.yaml/badge.svg)](https://github.com/stack-spot/runtime-github-action-ping/actions/workflows/action-test-ubuntu.yaml)

GitHub action to run StackSpot Runtime Iac Worker.

_**Note**: This action is supported on all runners operating systems (`ubuntu`, `macos`, `windows`)_

## 📚 Usage

### Requirements

### Use Case

```yaml
    steps:
      uses: stack-spot/runtime-github-action-iac@v1
      with:
        FEATURES_LEVEL_LOG: debug
        INPUT_PATH: iac.yaml

```

## License

[Apache License 2.0](https://github.com/stack-spot/runtime-github-action-ping/blob/main/LICENSE)