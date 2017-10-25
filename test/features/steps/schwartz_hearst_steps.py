from behave import given, then
from nose.tools import assert_equals
import abbreviations.schwartz_hearst as schwartz_hearst


@given('Text that I want to extract abbreviations from')
def step_impl(context):
    context.result = schwartz_hearst.extract_abbreviation_definition_pairs(doc_text=context.text)


@then(u'"{acronym}" should be mapped to "{term}"')
def step_impl(context, acronym, term):
    actual_result = context.result
    assert_equals(actual_result.get(acronym), term)
