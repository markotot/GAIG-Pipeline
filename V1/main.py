def run_app() -> None:

    optimizer = "Adam"
    learning_rate = 1e-4
    training_steps = 1000
    losses = []

    for step in range(training_steps):
        losses.append(0.999**step)

    with open("loss.txt", "w") as f:
        f.write(str(losses))

    with open("results.txt", "w") as f:
        f.write("F1 score: 0.66\n")
        f.write("Total time: 1h 23m 45s\n")

    with open("parameters.txt", "w") as f:
        f.write("Learning Rate: " + str(learning_rate) + "\n")
        f.write("Optimizer: " + optimizer + "\n")
        f.write("Training Steps: " + str(training_steps) + "\n")


if __name__ == "__main__":
    run_app()
