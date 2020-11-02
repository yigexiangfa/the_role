require 'test_helper'
class Role::Panel::RoleRulesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @role_panel_role_rule = create role_panel_role_rules
  end

  test 'index ok' do
    get panel_role_rules_url
    assert_response :success
  end

  test 'new ok' do
    get new_panel_role_rule_url
    assert_response :success
  end

  test 'create ok' do
    assert_difference('RoleRule.count') do
      post panel_role_rules_url, params: { #{singular_table_name}: { #{attributes_string} } }
    end

    assert_response :success
  end

  test 'show ok' do
    get panel_role_rule_url(@role_panel_role_rule)
    assert_response :success
  end

  test 'edit ok' do
    get edit_panel_role_rule_url(@role_panel_role_rule)
    assert_response :success
  end

  test 'update ok' do
    patch panel_role_rule_url(@role_panel_role_rule), params: { #{singular_table_name}: { #{attributes_string} } }
    assert_response :success
  end

  test 'destroy ok' do
    assert_difference('RoleRule.count', -1) do
      delete panel_role_rule_url(@role_panel_role_rule)
    end

    assert_response :success
  end

end
