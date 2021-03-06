# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

@test hadoop_hdfs_env_vars {
  [ -n "${HADOOP_HDFS_HOME}" ]
  [ -n "${HDFS_LIB_JARS_DIR}" ]
}

@test hadoop_hdfs_dir_struct {
  [ -d "${HADOOP_HDFS_HOME}/bin" ]
  [ -d "${HADOOP_HDFS_HOME}/${HDFS_LIB_JARS_DIR}" ]
  [ -d "${HADOOP_CONF_DIR:-${HADOOP_HDFS_HOME}/etc/hadoop}" ]
}

@test hadoop_hdfs_bin {
  for bin in hdfs; do
    [ -x "${HADOOP_HDFS_HOME}/bin/${bin}" ]
  done
}