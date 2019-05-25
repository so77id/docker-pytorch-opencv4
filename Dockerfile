FROM pytorch/pytorch:latest
MAINTAINER Miguel Rodriguez <m.rodriguezs1990@gmail.com>

# Dependencies

# Opencv
RUN pip install opencv-python

# Py libraries
# RUN pip install dlib
RUN pip install imutils
RUN pip install h5py
RUN pip install urllib3
RUN pip install mnist
RUN pip install scikit-image
RUN pip install scikit-learn



# pyTorch plugins
RUN pip install sp
RUN pip install dgl
RUN pip install tensorboardX
RUN pip install skorch


# Utils
RUN pip install jupyterlab
RUN pip install tqdm
RUN pip install slackclient
# RUN pip install moviepy requests imageio==2.4.1
# RUN python3 -c 'import moviepy.editor as mpy'




CMD ["/bin/bash"]
