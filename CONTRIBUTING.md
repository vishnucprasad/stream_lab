
# Contributing to Stream Lab

Thank you for your interest in contributing to **Stream Lab**! We welcome all contributions, whether it’s reporting a bug, suggesting a feature, or submitting a pull request. Please take a moment to review this guide before getting started.

## Getting Started

### 1. Fork & Clone the Repository

First, fork the repository to your GitHub account and then clone it to your local machine:

```bash
# Fork the repo first (on GitHub)

git clone https://github.com/YOUR-USERNAME/stream_lab.git
cd stream_lab
```

### 2. Set Up the Development Environment

Make sure you have Flutter installed and set up for web, mobile, and desktop development. If not, follow [Flutter’s Setup Guide](https://docs.flutter.dev/get-started).

Then, install dependencies:

```bash
flutter pub get
```

To run the app on different platforms:

- **Web**:
  ```bash
  flutter run -d chrome
  ```
- **Desktop (Linux/Windows)**:
  ```bash
  flutter run -d <target-platform>
  ```

## Contribution Guidelines

### Reporting Issues
- Before submitting a new issue, check if it already exists in the [issue tracker](https://github.com/vishnucprasad/stream_lab/issues).
- Clearly describe the issue, steps to reproduce it, and any error messages.
- If applicable, provide screenshots or logs.
- Label the issue correctly (e.g., `bug`, `enhancement`, `documentation`).

For more details, see [ISSUES.md](./ISSUES.md).

### Feature Requests
- Open a feature request as a GitHub issue.
- Provide a clear and concise description of the feature and its benefits.
- If possible, include mockups or reference materials.

## Branching Strategy
- Use the following naming conventions for branches:
  - `feature/<feature-name>` for new features.
  - `fix/<issue-description>` for bug fixes.
  - `hotfix/<urgent-fix>` for critical fixes.
  - `docs/<documentation-update>` for documentation changes.

Example:
```bash
git checkout -b feature/socket-connection-enhancements
```

## Code Formatting & Best Practices
- Ensure your code follows Flutter best practices.
- Run `flutter analyze` to check for issues.
- Format your code using:
  ```bash
  flutter format .
  ```
- Follow Dart style guidelines:
  - Use `camelCase` for variables and functions.
  - Use `PascalCase` for class names.
  - Keep lines under 80 characters where possible.
  - Use meaningful variable and function names.
  - Avoid deep nesting; refactor into smaller functions when needed.

## Submitting Pull Requests

### PR Description Format
Each pull request should follow this template:

```md
## Summary
Briefly explain what the PR does.

## Changes
- List the changes made in this PR.
- Mention any dependencies added or modified.

## Issue Reference
Closes #ISSUE_NUMBER (if applicable).

## Screenshots (if applicable)
Attach any relevant screenshots or GIFs.

## Testing Steps
List steps to test this PR manually.

## Checklist
- [ ] Code follows project guidelines
- [ ] Unit tests added/updated (if applicable)
- [ ] Documentation updated (if applicable)
- [ ] No breaking changes
```

### Steps to Submit a PR

1. **Create a Branch**
   ```bash
   git checkout -b feature/new-feature
   ```
2. **Make Your Changes**
3. **Commit Your Changes**
    - Write clear and descriptive commit messages:

    ```
    feat: add new feature description
    ```

    - Use these prefixes:

    - `feat`: A new feature
    - `fix`: A bug fix
    - `docs`: Documentation updates
    - `refactor`: Code changes without adding features
    - `test`: Adding or updating tests
   ```bash
   git commit -m "feat: add new feature description"
   ```
4. **Push to Remote**
   ```bash
   git push origin feature/new-feature
   ```
5. **Create a Pull Request**
   - Open a pull request (PR) from your forked repository to the `main` branch of `stream_lab`.
   - Use the PR template.
   - Assign reviewers and add relevant labels.

## Reviewing and Merging PRs
- PRs will be reviewed by maintainers.
- Address any requested changes promptly.
- Once approved, the PR will be merged.
- Ensure that your branch is up to date before merging:
  ```bash
  git pull origin main
  ```

## License
By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for contributing to **Stream Lab**! 🚀
