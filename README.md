# runtime-github-action-iac

[![Action test Ubuntu](https://github.com/stack-spot/runtime-github-action-ping/actions/workflows/action-test-ubuntu.yaml/badge.svg)](https://github.com/stack-spot/runtime-github-action-ping/actions/workflows/action-test-ubuntu.yaml)

GitHub action to run StackSpot Runtime Iac Worker.

_**Note**: This action is supported on debian/RHEl like systems_

## 📚 Usage

### Requirements

### Use Case

Check how to implement the orchestration job using the [runtime-manager-action](https://github.com/stack-spot/runtime-manager-action)

```yaml
jobs:
  job1:
    runs-on: ubuntu-latest
    needs: [orchestration]
    strategy:
       matrix:
         task: ${{ fromJSON(needs.orchestration.outputs.tasks) }}
       fail-fast: true
       max-parallel: 1
    steps:
      - name: Worker IAC
        if: contains( matrix.task.taskType , 'IAC')
        uses: stack-spot/runtime-github-action-iac@v1
        with:
          FEATURES_LEVEL_LOG: debug
          CLIENT_ID: ${{ secrets.CLIENT_ID }}
          CLIENT_KEY: ${{ secrets.CLIENT_KEY }}
          CLIENT_REALM: ${{ secrets.CLIENT_REALM }}
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          AWS_SESSION_TOKEN: ${{ secrets.AWS_SESSION_TOKEN }}
          AWS_REGION: sa-east-1
          RUN_TASK_ID: ${{ matrix.task.runTaskId }}
          BASE_PATH_OUTPUT: path/to/file
```

## License

[Apache License 2.0](https://github.com/stack-spot/runtime-github-action-iac/blob/main/LICENSE)
