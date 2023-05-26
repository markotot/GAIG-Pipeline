import hydra
import neptune
from omegaconf import DictConfig

NEPTUNE_PROJECT_NAME = "markotot/GAIG"


@hydra.main(version_base=None, config_path="configs", config_name="config")
def run_app(config: DictConfig) -> None:
    run = neptune.init_run(project=NEPTUNE_PROJECT_NAME)

    params = {"learning_rate": 0.002, "optimizer": "Adam"}
    run["parameters"] = params

    for epoch in range(10):
        run["train/loss"].append(0.9**epoch)

    run["eval/f1_score"] = 0.66

    run.stop()


if __name__ == "__main__":
    run_app()
