# manim-sandbox

This repository contains a ready-to-use Manim environment configured with a Jupyter notebook example. Use the provided setup script to create a virtual environment with [uv](https://docs.astral.sh/uv/) and install the required dependencies.

## Quick start

1. Install the `uv` package manager if it is not already available. Follow the official [uv installation guide](https://docs.astral.sh/uv/getting-started/).
2. Run the setup script:
   ```bash
   ./setup.sh
   ```
3. Activate the virtual environment:
   ```bash
   source .venv/bin/activate
   ```
4. Open `VS Code` and select the **Python (manim-env)** kernel for the notebook `notebooks/bouncing_ball.ipynb`.
5. Run the cells to load the Manim IPython magic and render the bouncing ball animation.

The notebook demonstrates how to produce a simple animation of a ball bouncing on a ground plane using Manim inside a Jupyter notebook.
