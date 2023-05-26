import neptune

def run_app():
    run = neptune.init_run(
        project="markotot/GAIG",
        api_token="eyJhcGlfYWRkcmVzcyI6Imh0dHBzOi8vYXBwLm5lcHR1bmUuYWkiLCJhcGlfdXJsIjoiaHR0cHM6Ly9hcHAubmVwdHVuZS5haSIsImFwaV9rZXkiOiI4ODkxZmYyZC1lNzRlLTRlMTEtODJiNC1kYzNlNWQ5MWFlNDEifQ==",
    )  # your credentials

    params = {"learning_rate": 0.002, "optimizer": "Adam"}
    run["parameters"] = params

    for epoch in range(10):
        run["train/loss"].append(0.9 ** epoch)

    run["eval/f1_score"] = 0.66

    run.stop()


if __name__ == '__main__':
    run_app()
