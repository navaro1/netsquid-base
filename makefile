install/environment:
	./scripts/create_conda_env.sh

install/netsquid:
	./scripts/install_netsquid.sh

verify/netsquid:
	python ./examples/verify_netsquid.

run/example:
	python ./examples/pingpong_example.py