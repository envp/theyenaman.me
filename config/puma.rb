#!/usr/bin/env puma

# Bind the server to "url". "tcp://", "unix://" and "ssl://" are the only
# accepted protocols.
#
# The default is "tcp://0.0.0.0:9292".
bind 'tcp://0.0.0.0:8080'

# The directory to operate out of.
directory File.expand_path('../', File.dirname(__FILE__))

# Load "path" as a rackup file.
rackup File.expand_path('../config.ru', File.dirname(__FILE__))

# Set the environment in which the rack's app will run. The value must be a string.
#
# The default is "development".
#
# environment 'production'

# Daemonize the server into the background. Highly suggest that
# this be combined with "pidfile" and "stdout_redirect".
#
# The default is "false".
#
# daemonize
# daemonize false

# Store the pid of the server in the file at given path.
pidfile File.expand_path('../tmp/pids/puma.pid', File.dirname(__FILE__))

# Use "path" as the file to store the server info state. This is
# used by "pumactl" to query and control the server.
state_path File.expand_path('../tmp/pids/puma.state', File.dirname(__FILE__))

# Redirect STDOUT and STDERR to files specified. The 3rd parameter
# ("append") specifies whether the output is appended, the default is
# "false".
#
# stdout_redirect '../log/stdout', '../log/stderr'
# stdout_redirect '../log/stdout', '../log/stderr', true

# Disable request logging.
#
# The default is "false".
#
# quiet

# Configure "min" to be the minimum number of threads to use to answer
# requests and "max" the maximum.
#
# The default is "0, 16".
#
# threads 0, 16