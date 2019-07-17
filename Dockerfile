FROM pytorch/pytorch:latest
MAINTAINER Miguel Rodriguez <m.rodriguezs1990@gmail.com>

# Dependencies
RUN apt-get update
RUN apt-get install -y libglib2.0-0 cmake libsm6 libxext6 libxrender-dev

# Opencv
RUN pip install opencv-python

# Py libraries
RUN pip install dlib
RUN pip install imutils
RUN pip install h5py
RUN pip install urllib3
RUN pip install mnist
RUN pip install scikit-image
RUN pip install scikit-learn



# pyTorch plugins
RUN pip install torchvision
RUN pip install sp
RUN pip install dgl
RUN pip install tensorboardX
RUN pip install skorch


# Utils
RUN pip install jupyterlab
RUN pip install tqdm
RUN pip install slackclient
RUN pip install pandas
# RUN pip install moviepy requests imageio==2.4.1
# RUN python3 -c 'import moviepy.editor as mpy'
RUN pip install tensorflow

RUN pip install python-dotenv
RUN pip install pydot
RUN pip install requests

RUN apt-get install -y ffmpeg
RUN pip install librosa

RUN pip install --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib


CMD ["/bin/bash"]
