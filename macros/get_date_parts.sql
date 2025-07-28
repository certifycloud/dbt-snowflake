
{% macro get_date_parts(date_column) %}
    OBJECT_CONSTRUCT(
        'original_date', {{ date_column }},
        'year', EXTRACT(YEAR FROM CAST({{ date_column }} AS DATE)),
        'month', EXTRACT(MONTH FROM CAST({{ date_column }} AS DATE)),
        'day', EXTRACT(DAY FROM CAST({{ date_column }} AS DATE)),
        'day_of_week', EXTRACT(DAYOFWEEK FROM CAST({{ date_column }} AS DATE)),
        'day_of_year', EXTRACT(DAYOFYEAR FROM CAST({{ date_column }} AS DATE)),
        'week', EXTRACT(WEEK FROM CAST({{ date_column }} AS DATE)),
        'quarter', EXTRACT(QUARTER FROM CAST({{ date_column }} AS DATE))
    )
{% endmacro %}

