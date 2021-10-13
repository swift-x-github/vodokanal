require 'test_helper'

class PaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment = payments(:one)
  end

  test "should get index" do
    get payments_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_url
    assert_response :success
  end

  test "should create payment" do
    assert_difference('Payment.count') do
      post payments_url, params: { payment: { account_id: @payment.account_id, computation_id: @payment.computation_id, description: @payment.description, doc_num: @payment.doc_num, name: @payment.name, status: @payment.status, summa: @payment.summa, type: @payment.type, vodokanal_id: @payment.vodokanal_id } }
    end

    assert_redirected_to payment_url(Payment.last)
  end

  test "should show payment" do
    get payment_url(@payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_url(@payment)
    assert_response :success
  end

  test "should update payment" do
    patch payment_url(@payment), params: { payment: { account_id: @payment.account_id, computation_id: @payment.computation_id, description: @payment.description, doc_num: @payment.doc_num, name: @payment.name, status: @payment.status, summa: @payment.summa, type: @payment.type, vodokanal_id: @payment.vodokanal_id } }
    assert_redirected_to payment_url(@payment)
  end

  test "should destroy payment" do
    assert_difference('Payment.count', -1) do
      delete payment_url(@payment)
    end

    assert_redirected_to payments_url
  end
end
