# Use a base image with Bash
FROM ubuntu:latest

# Install bash if it's not already installed
RUN apt-get update && apt-get install -y bash

# Add a script that prints your name
RUN echo '#!/bin/bash\n\
echo "Rachagouni Sunitha"' > /print_name.sh

# Make the script executable
RUN chmod +x /print_name.sh

# Set the default command to execute the script
CMD ["/print_name.sh"]
