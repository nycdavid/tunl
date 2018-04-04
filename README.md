### Steps
1. Have the following pieces of information ready:
    * `EC2_USER`: user to login as
    * `EC2_DNS`: the public DNS of the intermediate EC2 instance
    * `PORT`: the port for the SSH tunnel. This should correspond to the port that:
      - will be published on the host
      - tunnel entrance from within the Docker container
      - tunnel exit on the EC2 instance
    * `PEM`: path to your local pem file that is set as the auth keypair for the EC2 instance
1. Run:
    ```
    EC2_USER=ec2-user \
    EC2_HOST=ec2-0-0-0-0.compute-1.amazonaws.com \
    PORT=9000 \
    PEM=/path/to/pem/file \
    make run
    ```
1. Point browser to `localhost:9000`
