# C++ Grade Estimate Action

This action takes a CPSC lab configuration checks to see if each file contains the required Cal State Fullerton CPSC header.

Inspired by the tutorial at https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action.

## Inputs

The container runs a script in the .action directory which uses the `lab_config.py` file to identify the input files.

Additionally, the action assumes that the repository has been checked out using the `actions/checkout` action.

## Outputs

All the output is on `stdout`.

## Example usage

```
    steps:
      - uses: actions/checkout@v3
      - name: Estimate if the lab is passing or failing
        id: header-check
        uses: mshafae/cpp-grade-estimate-docker-action@v1
```