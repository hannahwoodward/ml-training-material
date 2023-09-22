FROM jupyter/minimal-notebook:python-3.10

ENV CONFIG_NAME "ncas-cmss-ml"

COPY pyproject.toml .

RUN pip install .

COPY exercises ./exercises/
COPY slides ./slides/
COPY src ./src/
COPY worked-solutions ./worked-solutions/
COPY README.md .
