#!/usr/bin/env sh

# Start ssh-agent
eval $(ssh-agent -s)

# Add pem file to known identities
ssh-add /app/auth.pem

# Open SSH tunnel
ssh \
  -L 0.0.0.0:${PORT}:${EC2_DNS}:${PORT} \
  -N ${EC2_USER}@${EC2_DNS}
