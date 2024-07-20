FROM codercom/code-server:latest

# Set user
USER coder

# Expose port for CodeServer
EXPOSE 8080

# Command to start CodeServer
CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "none"]
