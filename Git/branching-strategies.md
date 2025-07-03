
# Branching Strategies

There is no single "best" branching strategy. Every organization defines its own strategy based on team size, workflow, release cycles, and tooling. Below are two real-world examples from different companies that implemented unique branching strategies.

---

## Example 1: Small Startup (10–20 Employees)

### Branches Used
- `master`: The main production branch (protected)
- `staging`: Used by QA, Beta users, and selected stakeholders
- `dev`: Used by developers, with multiple feature branches branched off from it

### Workflow
1. `master` is the main release branch.
2. `staging` and `dev` are created from `master`, hence they have all the code from the `master` branch.
3. Developers create **feature branches** from `dev`.
4. Once a feature is complete, it is merged into `dev`.
5. When the code in `dev` reaches a stable state, it is merged into `staging`.
6. QA and beta users test the staging branch.
7. If everything passes, changes are merged into the `master` branch.

This process ensures code quality before production deployment while enabling rapid development.

---

## Example 2: Mid-Sized Company (100+ Employees) with Automation and JIRA Integration

### Branches Used
- `prd` (Production)
- `stg` (Staging)
- `dev` (Development)
- `feature branches` (named after JIRA tickets)

### Workflow
1. The company uses **JIRA** as its project tracking tool.
2. Every feature or task is associated with a JIRA ticket, e.g., `CD-123` (CD = Company initials).
3. A **feature branch** is created with the same name as the JIRA ticket, e.g., `CD-123`.
4. Developers start working on this feature. As they push code to the remote feature branch, an automated **CI/CD workflow**(like GitHub Actions, GitLab CI, Jenkins, etc.) is triggered. This includes:
   - Code style checks (linting, formatting)
   - Automated tests (unit, integration, security)
   - If all checks pass, the branch status turns green (✅) and is marked as **"Ready for Review"**
   - Code is reviewed by a teammate (via a Pull Request/Merge Request)
   - Upon approval, it is merged into `dev`
5. The updated `dev` branch is merged into `stg` for **UAT (User Acceptance Testing)** and **QA (Quality Assurance)**.
6. After successful testing, the changes are automatically deployed to the `prd` branch.
7. The corresponding JIRA ticket is marked as **"Done"**


### Where Do These Actions Happen? (Local vs Remote)

- ✅ Most merges, approvals, and CI/CD triggers happen **remotely** — on platforms like GitHub, GitLab, or Bitbucket.
- 🚀 Developers push code to **remote feature branches** to trigger CI/CD pipelines.
- 🔁 After remote merges (`feature` → `dev` → `stg` → `prd`), team members may **pull changes locally** to stay in sync or start new work.
- 🛠️ Local Git is mainly used to develop, commit, and push — while final merges and production deployments are managed remotely.


### JIRA
- Some companies have a culture that says "No ticket = No work."
- The person working on a particular ticket will have all the information related to that task, and all associated code will be available in the corresponding branch.
- The ticket ID is a way to track what you are working on, how much progress you’ve made, what stage the task is in, who is responsible, and when it’s ready for review or deployment.

### Hotfix Handling
- **Hotfix branches** are created **directly from the `prd` branch**, not from `dev` (which may have unstable code).
- Even after a feature passes all tests and is deployed to the production (prd) branch, unforeseen errors may still occur in the live environment. 
- To address such urgent issues, a hotfix branch is created. This ensures the fix is based on the current live code.
- After the hotfix is resolved, it is merged into both `prd` and `stg`.
- From `stg`, the changes are pulled into `dev` to keep all branches up to date.

This structure enables traceability via JIRA and ensures production issues are resolved quickly with minimal risk.

---

## Key Takeaways
- Branching strategies depend on team structure and deployment flow.
- Integration with tools like JIRA and CI/CD pipelines enhances transparency and automation.
- Always include hotfix strategies in your branching model for real-time production fixes.
