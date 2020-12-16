require 'test_helper'

class ClassMeetingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_meeting = class_meetings(:one)
  end

  test "should get index" do
    get class_meetings_url
    assert_response :success
  end

  test "should get new" do
    get new_class_meeting_url
    assert_response :success
  end

  test "should create class_meeting" do
    assert_difference('ClassMeeting.count') do
      post class_meetings_url, params: { class_meeting: { end_time: @class_meeting.end_time, name: @class_meeting.name, start_time: @class_meeting.start_time, student_id: @class_meeting.student_id, teacher_id: @class_meeting.teacher_id } }
    end

    assert_redirected_to class_meeting_url(ClassMeeting.last)
  end

  test "should show class_meeting" do
    get class_meeting_url(@class_meeting)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_meeting_url(@class_meeting)
    assert_response :success
  end

  test "should update class_meeting" do
    patch class_meeting_url(@class_meeting), params: { class_meeting: { end_time: @class_meeting.end_time, name: @class_meeting.name, start_time: @class_meeting.start_time, student_id: @class_meeting.student_id, teacher_id: @class_meeting.teacher_id } }
    assert_redirected_to class_meeting_url(@class_meeting)
  end

  test "should destroy class_meeting" do
    assert_difference('ClassMeeting.count', -1) do
      delete class_meeting_url(@class_meeting)
    end

    assert_redirected_to class_meetings_url
  end
end
