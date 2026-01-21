# GitHub API Integration using Shell Scripting

## 📌 Project Overview
This project demonstrates how a DevOps engineer can use **Shell Scripting** to interact with the **GitHub REST API** in order to automate repository access management tasks.

The script fetches and lists users who have access to a specific GitHub repository. This is useful for security audits, access reviews, and DevOps automation.

---

## 🎯 Project Objective
- Automate retrieval of GitHub repository collaborators
- Avoid manual checking through GitHub UI
- Improve visibility and security of repository access
- Practice real-world DevOps scripting and API usage

---

## 🛠 Tools & Technologies Used
- Linux (Ubuntu)
- Shell Scripting (Bash)
- Git & GitHub
- GitHub REST API
- curl (for API calls)
- jq (for JSON parsing)

---

## ⚙️ How the Project Works
1. The shell script calls the GitHub REST API using `curl`
2. Authentication is done using a GitHub Personal Access Token
3. API response is returned in JSON format
4. `jq` is used to parse and filter required data
5. The script outputs the list of users with repository access

---

## 🔐 Security Best Practices Followed
- GitHub tokens are stored in **environment variables**
- No credentials are hardcoded in the script
- Sensitive data is excluded from version control

---

## 📂 Project Structure
github-api-project/
├── list-users.sh
├── README.md
