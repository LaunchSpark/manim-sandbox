#!/usr/bin/env bash
set -euo pipefail

# Configuration
VENV_DIR=".venv"
PYTHON_BIN="${VENV_DIR}/bin/python"
KERNEL_NAME="manim-env"
KERNEL_DISPLAY_NAME="Python (manim-env)"

command -v uv >/dev/null 2>&1 || {
  cat <<'MSG' >&2
[ERROR] The "uv" tool is required but was not found.
Install it by following the instructions at https://docs.astral.sh/uv/getting-started/.
MSG
  exit 1
}

if [ ! -d "${VENV_DIR}" ]; then
  echo "[INFO] Creating virtual environment in ${VENV_DIR} using uv..."
  uv venv "${VENV_DIR}"
else
  echo "[INFO] Reusing existing virtual environment in ${VENV_DIR}."
fi

# Install required packages using uv pip inside the virtual environment
echo "[INFO] Installing Python dependencies with uv pip..."
uv pip install --python "${PYTHON_BIN}" \
  "manim" \
  "jupyter" \
  "ipykernel"

# Register the virtual environment as a Jupyter kernel for VS Code
if [ -x "${PYTHON_BIN}" ]; then
  echo "[INFO] Registering Jupyter kernel '${KERNEL_NAME}'..."
  "${PYTHON_BIN}" -m ipykernel install --user --name "${KERNEL_NAME}" --display-name "${KERNEL_DISPLAY_NAME}"
else
  echo "[WARN] Python executable not found at ${PYTHON_BIN}. Kernel registration skipped." >&2
fi

cat <<'MSG'
[INFO] Setup complete.
Activate the environment with:
  source ${VENV_DIR}/bin/activate

Then open VS Code, select the "Python (manim-env)" kernel, and start the notebook in notebooks/bouncing_ball/bouncing_ball.ipynb.
MSG
