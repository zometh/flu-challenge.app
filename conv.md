# 📚 Conventions and Best Practices 

Welcome! This document outlines the conventions for commits, pull requests (PRs), and general collaboration practices. By following these rules, we ensure clean code, a clear git history, and effective teamwork.

---

## 🔧 Commit Conventions

We follow the [Conventional Commits](https://www.conventionalcommits.org/) specification for structuring commit messages.

### Message Structure
```
<type>(<scope>): <description>

[optional body]

[optional footer(s)]
```

### Commit Types
Here are the common commit types used in this project:

| Type        | Description                                         |
|-------------|-----------------------------------------------------|
| `feat`      | Adding a new feature                                |
| `fix`       | Fixing a bug                                        |
| `docs`      | Documentation updates                               |
| `style`     | Changes that do not affect the code (e.g., formatting) |
| `refactor`  | Refactoring code without changing functionality     |
| `test`      | Adding or updating tests                           |
| `chore`     | Miscellaneous tasks (e.g., dependency updates)      |

### Examples
1. **Adding a feature:**
```
feat(auth): add login functionality with JWT
```
2. **Fixing a bug:**
```
fix(ui): resolve button alignment issue on mobile
```
3. **Updating documentation:**
```
docs(readme): update installation instructions
```

---

## 🚀 Pull Request (PR) Process

### Steps to Create a Pull Request
1. **Create a branch from `main`:**
```bash
git checkout -b <feature/bugfix/...>/<task-name>
```
Example:
```bash
git checkout -b feat/login-page
```
2. Work on your branch and follow the commit conventions described above.

3. Update or add tests if necessary.

4. Push your branch to the remote repository:

```
git push origin <branch-name>
```
5. Create a PR on GitHub following these guidelines:

- Title: Use a clear description (e.g., feat(auth): implement login feature).
- Description: Explain the changes made.
- Link to Issues: Associate the PR with a GitHub issue (e.g., Closes #123).
- Checklist:

    - Code tested and functional

    - Documentation updated if necessary

6. Add reviewers and address their comments if needed.

### PR Checklist

Before submitting a PR, ensure:

- All tests pass: flutter test
- Code follows conventions and is properly formatted.
- Documentation is updated for any new or changed functionality.

## 🛠️ Code Standards
### Linting

   - Commands:
       - Check linting with: flutter analyze
       - Format code with: flutter format .

Project Structure

    Organize files in a clear and modular structure.
    Use descriptive file names (e.g., login_service.dart, user_model.dart).

## 📋 Git Workflow
### Branching

   - Main branches:
       - main: Contains the latest stable version of the project.
   - Development branches:
       - feat/<name>: For new features.
       - fix/<name>: For bug fixes.
       - chore/<name>: For miscellaneous tasks.

### Merging

   - Rebase or Squash: Before merging, use squash and merge to maintain a clean history.
   - Review Rule: Every PR must be approved by at least one reviewer.

## 🌟 Best Practices

### 1. Tests:
- Add tests for any new feature or fix.
- Ensure they pass with: flutter test.

### 2. Documentation:
- Keep documentation up-to-date (README, docs/ files, etc.).
- Add clear comments in the code.

### 3. Collaboration:
- Communicate in GitHub issues for clarification or discussions.
-  Resolve conflicts before submitting a PR. 
