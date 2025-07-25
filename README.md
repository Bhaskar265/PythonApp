my-python-app/
├── Dockerfile
├── my-python-app.py

docker --version
mkdir my-python-app
cd my-python-app
vi my-python-app.py


## 🐍 Python Script

The script takes two numbers as arguments: `length` and `width`, then prints the calculated area.

```python
# my-python-app.py

import sys

length = float(sys.argv[1])
width = float(sys.argv[2])
area = length * width
print("The area of the rectangle is:", area)
-------
vi Dockerfile

FROM python:3.8-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir requests

CMD ["python", "my-python-app.py"]

sudo docker build -t my-python-app .
sudo docker run my-python-app python my-python-app.py 5 3
docker ps



### ✅ To Add to GitHub

From the project root:

```bash
git init
git add .
git commit -m "Initial commit: WordPress + MySQL using Docker Compose"
git branch -M main
git remote add origin https://github.com/yourusername/wordpress-docker.git
git push -u origin main

Fix Option B (Advanced – Use SSH)
If you prefer SSH, make sure:

You’ve created an SSH key using:

bash
Copy code
ssh-keygen -t ed25519 -C "your_email@example.com"
cat ~/.ssh/id_ed25519.pub

You’ve added your public key (~/.ssh/id_ed25519.pub) to GitHub under
GitHub → Settings → SSH and GPG Keys

You’ve tested the connection:

bash
Copy code
ssh -T git@github.com
Then try:

bash
Copy code
git remote add origin git@github.com:Bhaskar265/wordpress_project.git
git push -u origin main
