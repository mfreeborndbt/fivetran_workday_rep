# Workday Employee Overview dbt Project

This dbt project builds the `workday__employee_overview` model, which provides a comprehensive view of employees with enriched personal information and position details.

## Project Structure

```
workday_employee_overview/
├── csvs/                          # Sample CSV data for loading into Snowflake
│   ├── worker_history.csv
│   ├── worker_position_history.csv
│   ├── personal_information_common_data.csv
│   ├── country_personal_information.csv
│   ├── person_name.csv
│   ├── person_contact_email_address.csv
│   ├── personal_information_ethnicity.csv
│   └── military_service.csv
├── macros/                        # Column definition macros
├── models/
│   ├── staging/
│   │   ├── base/                  # Base staging models (source references)
│   │   ├── src_workday.yml        # Source definitions
│   │   └── stg_workday__*.sql     # Staging models
│   ├── intermediate/              # Intermediate transformation models
│   ├── workday__employee_overview.sql  # Final model
│   └── docs.md                    # Documentation
├── dbt_project.yml
├── packages.yml
└── README.md
```

## Data Loading

The CSV files in the `csvs/` folder should be loaded into Snowflake with the following configuration:

- **Database:** `Workday`
- **Schema:** `workday_raw`

### Tables to Load

| CSV File | Target Table |
|----------|--------------|
| `worker_history.csv` | `Workday.workday_raw.worker_history` |
| `worker_position_history.csv` | `Workday.workday_raw.worker_position_history` |
| `personal_information_common_data.csv` | `Workday.workday_raw.personal_information_common_data` |
| `country_personal_information.csv` | `Workday.workday_raw.country_personal_information` |
| `person_name.csv` | `Workday.workday_raw.person_name` |
| `person_contact_email_address.csv` | `Workday.workday_raw.person_contact_email_address` |
| `personal_information_ethnicity.csv` | `Workday.workday_raw.personal_information_ethnicity` |
| `military_service.csv` | `Workday.workday_raw.military_service` |

## Data Relationships (Referential Integrity)

The sample data maintains referential integrity across all tables:

- `worker_history.id` → `worker_id` in other tables
- `personal_information_common_data.fivetran_id` → `country_personal_information.personal_info_common_id`
- `country_personal_information.fivetran_id` → `personal_information_ethnicity.country_personal_information_id`
- `personal_information_common_data.fivetran_id` → `military_service.personal_info_common_id`

### Sample Workers

| Worker ID | Name | Position | Status |
|-----------|------|----------|--------|
| WRK001 | Alex Johnson | Senior Software Engineer | Active |
| WRK002 | Sarah Thompson | Engineering Manager | Active |
| WRK003 | Miguel Garcia | Data Analyst | Active |
| WRK004 | Robert Williams | Sales Director | Terminated |
| WRK005 | Emily Brown | Operations Specialist | Active |

## Setup

1. Install dbt packages:
   ```bash
   dbt deps
   ```

2. Load CSV data into Snowflake (use your preferred method)

3. Configure your `profiles.yml` to connect to Snowflake

4. Run the models:
   ```bash
   dbt run
   ```

## Configuration

This project uses the V2 personal information schema by default. To use the legacy schema, set the following variable in your `dbt_project.yml`:

```yaml
vars:
  workday__using_personal_info_v2_schema: false
```

## Output

The final `workday__employee_overview` model includes:
- Employee identifiers and demographics
- Position information (title, location, FTE)
- Compensation details
- Termination information
- Tenure calculations (1, 5, 10, 20, 30 year milestones)
