# General Instructions
- Run available automated checks via `uv run pytest` (or other relevant commands) before opening a pull request, and ensure the Manim scenes still render if modified.
- Update documentation in `README.md`, `AGENTS.md` corresponfing to the folder your working in or other markdown files whenever you change the setup process, dependencies, or user-facing behavior.
- Maintain the structure and clarity of Jupyter notebooks; clear outputs before committing unless the output is essential for documentation.
- When rendering scenes for verification, save the resulting video in the same `media/jupyter/...` location Manim uses by default so the latest run is available without re-rendering; only clear it if the user explicitly asks.

# Repository Overview
- `setup.sh`: Bootstraps a uv-managed virtual environment, installs Manim Community Edition, Jupyter, and registers the VS Code kernel named **manim-env**.
- `notebooks/`: Contains Jupyter notebooks demonstrating Manim usage, such as `bouncing_ball.ipynb`.
- `README.md`: Provides setup instructions and an overview of the project environment.

# Architecture Notes
- The project relies on [uv](https://docs.astral.sh/uv/) for dependency management and virtual environment creation.
- Animations are authored with Manim Community Edition and showcased through Jupyter notebooks using the Manim IPython magic.
- Development is expected to occur within the created virtual environment to ensure consistent package versions and kernel registration.
