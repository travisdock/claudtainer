# Use a base image with Node.js pre-installed (Claude Code requires Node.js)
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Install Claude Code globally
RUN npm install -g @anthropic-ai/claude-code

# Copy the entrypoint script into the image
# COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Make the script executable
# RUN chmod +x /usr/local/bin/entrypoint.sh
# ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# Define the command to run when the container starts
CMD ["claude"]
