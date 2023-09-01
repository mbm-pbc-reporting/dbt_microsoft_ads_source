ADD source_relation WHERE NEEDED + CHECK JOINS AND WINDOW FUNCTIONS! (Delete this line when done.)

{{ config(enabled=var('ad_reporting__microsoft_ads_enabled', True)) }}

{{
    fivetran_utils.union_data(
        table_identifier='ad_group_history', 
        database_variable='microsoft_ads_database', 
        schema_variable='microsoft_ads_schema', 
        default_database=target.database,
        default_schema='microsoft_ads',
        default_variable='ad_group_history_source',
        union_schema_variable='microsoft_ads_union_schemas',
        union_database_variable='microsoft_ads_union_databases'
    )
}}