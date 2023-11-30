## dbt Training Project
This repository consists of a [dbt](https://www.getdbt.com/) project that transforms raw data sources into clear, formatted models for Analytics.

### Sources:
_All source data is loaded to the `RAW` database._
- `tech_store` - An internal company database
- `payment_app` - A third party payment processing application

### Target Environments:
_All transformed data models are deployed to the `ANALYTICS_###` database._
- **Development**
   - Schema: `DBT_JDOE`
     - One per developer _(first initial, last name)_
- **Production**
   - Schema: `STAGING`
     - 1:1 with each soure-system table
   - Schema: `MARTS`
     - Fully transformed and joined models ready for analytics   
   
### How to Get Started?
- Confirm both Python & Git are on local machine (if not, download them)
   - Run `python --version` or `python3 --version`
      - [Python Download](https://www.python.org/downloads)
   - Run `git --version`
      - [Git Download](https://git-scm.com/downloads)
   - Set default Git values:
      - `user.name=[user-name]`
      - `user.email=email@domain.com`
      - `init.defaultbranch=main`
      - `git config --global --add push.default current`
      - `git config --global push.autoSetupRemote true`
      - `git config --global pull.rebase false`
- Download [Visual Studio Code](https://code.visualstudio.com/download) & open the new `GitHub/` directory 
- Create a Python [virtual environment](https://docs.getdbt.com/docs/faqs/install-pip-best-practices#using-virtual-environments) to isolate project dependencies
    1. Right-Click under `GitHub/` and select "Open Integrated Terminal"  
    2. Run `python3 -m venv dbt-env` to create virtual environment
    3. Run `source dbt-env/bin/activate` to activate & use the virtual environment
- [Install dbt](https://docs.getdbt.com/dbt-cli/install/overview) locally (inside virtual environment) using the proper [adapter](https://docs.getdbt.com/docs/supported-data-platforms)
    - Run `pip install dbt-[adapter]`
- Clone this repository within the `GitHub/` folder
    - Run `git clone https://github.com/[owner]/[repo].git`
- Pull latest repository changes on the `main` branch
    - Run `git pull`
- Identify the `profiles.yml` file on your local machine 
    - Local File Path: `~/.dbt/profiles.yml`
      - Will be hidden by default on Mac/Linux. Press `CMD + SHIFT + .` to reveal.
    - Copy/Paste contents of `_project_docs/sample-profiles.yml`
      - Update your `dataset` accordingly
- Validate successful database connection
    - Run `cd dbt` to switch into dbt project directory
    - Run `dbt debug` to validate dbt can connect
- Add remote origin
  - Run `git remote add origin https://github.com/[USERNAME]/[REPO].git`
- Create a new branch
    - `git branch [branch-name]`
- Checkout branch
    - `git checkout [branch-name]`
- Download dbt packages
    - `dbt deps`
- Start developing!
   - *IMPORTANT* - All changes should follow the team [Style Guide](_project_docs/style_guide.md)
   - You'll need to reactivate your Virtual Environment each time by running `source dbt-env/bin/activate` from `GitHub/` directory
      - [Click here](https://docs.getdbt.com/dbt-cli/install/pip#using-virtual-environments) to learn more about using virtual environments w/ dbt, including ways to alias this acticate command.

### Contributors
- John Doe (Developer)
- Jane Doe (Developer)

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
