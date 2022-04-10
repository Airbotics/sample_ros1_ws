FROM ros:melodic

SHELL ["/bin/bash", "-c"]

WORKDIR /catkin_ws

COPY . src/cpp_package

RUN sudo apt-get install build-essential

RUN source /opt/ros/melodic/setup.bash && catkin_make

RUN mv src/cpp_package/entry_script.sh /
RUN chmod +x /entry_script.sh

ENTRYPOINT [ "/entry_script.sh" ]