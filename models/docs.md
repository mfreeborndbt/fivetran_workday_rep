{% docs _fivetran_deleted %} Indicates if the record was soft-deleted by Fivetran. {% enddocs %}

{% docs _fivetran_synced %} Timestamp the record was synced by Fivetran. {% enddocs %}

{% docs _fivetran_start %} Timestamp when the record was first created or modified in the source. {% enddocs %}

{% docs _fivetran_end %} Timestamp marking the end of a record being active. {% enddocs %}

{% docs _fivetran_active %} TRUE if it is the currently active record. FALSE if it is a historical version of the record. {% enddocs %}

{% docs source_relation %} The record's source if the unioning functionality is used. Otherwise this field will be empty. {% enddocs %}

{% docs worker_id %} Unique identifier for the worker. {% enddocs %}

{% docs position_id %} Identifier for the specific position. {% enddocs %}

{% docs employee_id %} Surrogate key on `worker_id`, `source_relation`, `position_id`, `position_start_date` to create unique identifier for a Workday employee. {% enddocs %}

{% docs fivetran_id %} Fivetran composite key identifier. {% enddocs %}

{% docs first_name %} The first name of the individual. {% enddocs %}

{% docs last_name %} The last name or surname of the individual. {% enddocs %}

{% docs date_of_birth %} The date of birth of the individual. {% enddocs %}

{% docs gender %} The gender of the individual. {% enddocs %}

{% docs is_hispanic_or_latino %} Flag indicating whether the individual is Hispanic or Latino. {% enddocs %}

{% docs email_address %} The actual email address of the person. {% enddocs %}

{% docs ethnicity_codes %} String aggregation of all ethnicity codes associated with an individual. {% enddocs %}

{% docs military_status %} The military status of the worker. {% enddocs %}

{% docs business_title %} The business title associated with the worker position. {% enddocs %}

{% docs job_profile_id %} Identifier for the job profile. {% enddocs %}

{% docs employee_type %} The type of employee associated with the worker position. {% enddocs %}

{% docs position_location %} The position location of the employee. {% enddocs %}

{% docs management_level_code %} Code indicating the management level associated with the job profile. {% enddocs %}

{% docs fte_percent %} The percentage of hours, the employee's scheduled hours divided by the employer's hours for a full-time workweek. {% enddocs %}

{% docs position_start_date %} The position start date for this employee. {% enddocs %}

{% docs position_end_date %} The position end date for this employee. {% enddocs %}

{% docs position_effective_date %} The position effective date for the employee. {% enddocs %}

{% docs days_employed %} The number of days the employee held their position. {% enddocs %}

{% docs hire_date %} The date when the worker was hired. {% enddocs %}

{% docs departure_date %} The departure date for the employee. {% enddocs %}

{% docs days_as_worker %} Number of days since the worker has been created. {% enddocs %}

{% docs is_terminated %} Has the worker been terminated? {% enddocs %}

{% docs is_employed %} Is the worker currently employed? {% enddocs %}

{% docs is_user_active %} Is the user currently active. {% enddocs %}

{% docs is_regrettable_termination %} Has the worker been regrettably terminated? {% enddocs %}

{% docs primary_termination_category %} The primary termination category for the worker. {% enddocs %}

{% docs primary_termination_reason %} The primary termination reason for the worker. {% enddocs %}

{% docs compensation_effective_date %} Effective date when changes to the worker's compensation take effect. {% enddocs %}

{% docs employee_compensation_frequency %} Frequency of payment for the worker's employee compensation. {% enddocs %}

{% docs annual_currency_summary_currency %} Currency used for annual compensation summaries. {% enddocs %}

{% docs annual_currency_summary_total_base_pay %} Total base pay in the currency for annual summaries. {% enddocs %}

{% docs annual_currency_summary_primary_compensation_basis %} Primary compensation basis used for annual compensation summaries. {% enddocs %}

{% docs annual_summary_currency %} Currency used for annual summaries. {% enddocs %}

{% docs annual_summary_total_base_pay %} Total base pay in the currency for annual summaries. {% enddocs %}

{% docs annual_summary_primary_compensation_basis %} Primary compensation basis used for annual summaries. {% enddocs %}

{% docs compensation_grade_id %} Identifier for the compensation grade. {% enddocs %}

{% docs compensation_grade_profile_id %} Unique identifier for the compensation grade profile associated with the worker. {% enddocs %}

{% docs worker_code %} The code associated with the worker. {% enddocs %}

{% docs user_id %} The identifier for the user associated with the worker. {% enddocs %}

{% docs universal_id %} The universal ID associated with the worker. {% enddocs %}

{% docs workday__employee_overview %} Each record represents an employee with enriched personal information and the positions they hold. This helps measure employee demographic and geographical distribution, overall retention and turnover, and compensation analysis of their employees. {% enddocs %}
