# COMMANDS
DOCKER_COMMAND=docker
NVIDIA_DOCKER_COMMAND=nvidia-docker
DOCKER_FILE=Dockerfile
SVC=pytorch-opencv4-py3
VERSION=latest
REGISTRY_URL=so77id


build b:
	@echo "[build] Building cpu docker image..."
	@$(DOCKER_COMMAND) build -t $(REGISTRY_URL)/$(SVC):$(VERSION) -f $(DOCKER_FILE) .
	@echo "[build] Delete old versions..."
	@$(DOCKER_COMMAND) images|sed "1 d"|grep "<none> *<none>"|awk '{print $$3}'|sort|uniq|xargs $(DOCKER_COMMAND) rmi -f
run-cpu rc:
	@echo "[run] Running docker image on cpu mode..."
	@$(DOCKER_COMMAND) run -t -i $(REGISTRY_URL)/$(SVC):$(VERSION)
run-gpu rg:
	@echo "[run] Running docker image on gpu mode..."
	@$(NVIDIA_DOCKER_COMMAND) run -t -i $(REGISTRY_URL)/$(SVC):$(VERSION)
upload u:
	@echo "[upload] Uploading docker image..."
	@$(DOCKER_COMMAND) push $(REGISTRY_URL)/$(SVC):$(VERSION)
clean c:
	@echo "[clean] Cleaning docker images..."
	@$(DOCKER_COMMAND) rmi -f $(REGISTRY_URL)/$(SVC):$(VERSION)
