resource "aws_sns_topic" "approval_notifications" {
  name = "approval-notifications"
}


resource "aws_sns_topic_subscription" "approval_notifications_email" {
  topic_arn = aws_sns_topic.approval_notifications.arn
  protocol  = "email"
  endpoint  = "kumarmukesh86996@gmail.com"
}
