# GitHub Repository Setup Script

This script automates the process of creating a new GitHub repository and pushing a local project to it. It initializes a local Git repository, creates a README file, and uses the GitHub API to create a new remote repository. Then, it links the local repository to the new GitHub repository and pushes the initial commit.

## Features:
- Initializes a local Git repository.
- Creates a blank `README.md` file.
- Creates a remote GitHub repository via GitHub API.
- Links the local Git repository to the remote repository.
- Pushes the initial commit (with the README file) to GitHub.

## Prerequisites:
- **Git** must be installed on your local machine.
- **curl** must be installed to interact with the GitHub API.
- A **GitHub Personal Access Token (PAT)** is required for authentication with GitHub's API.
  - You can generate a PAT in GitHub under Settings > Developer settings > Personal access tokens.

## Usage:
1. **Clone or download** this script to your local machine.
2. **Make the script executable** by running:
    ```bash
    chmod +x create-github-repo.sh
    ```
3. **Run the script** by executing:
    ```bash
    ./create-github-repo.sh
    ```

4. The script will prompt you for the following inputs:
   - **Repository name**: The name you want to give to the new GitHub repository (e.g., `my-new-repo`).
   - **Repository description**: A brief description of the repository.
   - **Project directory path**: The absolute path to your local project folder (e.g., `/home/user/projects/my-project`).
   - **GitHub username**: Your GitHub username.
   - **GitHub Personal Access Token (PAT)**: Your GitHub token to authenticate with the GitHub API.

5. After you provide the inputs, the script will:
   - Initialize a Git repository in the provided local project directory.
   - Create a blank `README.md` file and commit it.
   - Create a new GitHub repository using the GitHub API.
   - Set the remote URL for the repository to point to GitHub.
   - Push the initial commit to the newly created GitHub repository.

6. Once completed, the script will output a message with a link to the newly created repository.

## Example Output:
```bash
What name do you want to give your remote repo?
my-new-repo
Enter a repo description: 
A new repository for my project
What is the absolute path to your local project directory?
/home/user/projects/my-project
What is your GitHub username?
your-username
Enter your GitHub Personal Access Token (PAT): 
Done. Go to https://github.com/your-username/my-new-repo to see.
*** You're now in your project root. ***
