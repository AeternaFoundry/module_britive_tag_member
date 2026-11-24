output "tag_members_id" {
  description = "Map of id values across all tag_members, keyed the same as var.tag_members"
  value       = { for k, v in britive_tag_member.tag_members : k => v.id }
}
output "tag_members_tag_id" {
  description = "Map of tag_id values across all tag_members, keyed the same as var.tag_members"
  value       = { for k, v in britive_tag_member.tag_members : k => v.tag_id }
}
output "tag_members_tag_name" {
  description = "Map of tag_name values across all tag_members, keyed the same as var.tag_members"
  value       = { for k, v in britive_tag_member.tag_members : k => v.tag_name }
}
output "tag_members_user_id" {
  description = "Map of user_id values across all tag_members, keyed the same as var.tag_members"
  value       = { for k, v in britive_tag_member.tag_members : k => v.user_id }
}
output "tag_members_username" {
  description = "Map of username values across all tag_members, keyed the same as var.tag_members"
  value       = { for k, v in britive_tag_member.tag_members : k => v.username }
}

