import hydra
import neptune

# import numpy as np
from omegaconf import DictConfig


@hydra.main(version_base=None, config_path="", config_name="parameters")
def run_app(config: DictConfig) -> None:

    run = neptune.init_run(
        project=config.neptune.project_name,
    )

    params = {
        "learning_rate": config.training.learning_rate,
        "optimizer": config.training.optimizer,
    }

    for step in range(config.training.training_steps):
        run["train/loss"].append(0.999**step)

    run["eval/f1_score"] = 0.66
    run["eval/total_time"] = "1h 23m 45s"

    run["parameters"] = params

    run.stop()


if __name__ == "__main__":
    run_app()
