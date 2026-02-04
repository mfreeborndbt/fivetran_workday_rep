-- This test asserts that all employees should have been hired after 2025
-- This will FAIL for demo purposes to show how store_failures works
-- Failing records are stored in the configured schema for easy debugging

{{ config(
    severity='warn',
    store_failures=true,
    schema='dbt_test_failures'
) }}

select
    worker_id,
    worker_code,
    user_id,
    hire_date,
    business_title,
    position_location,
    'Hired before 2025' as failure_reason
from {{ ref('workday__employee_overview') }}
where hire_date < '2025-01-01'
