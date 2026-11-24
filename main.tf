resource "britive_tag_member" "tag_members" {
  for_each = var.tag_members

  tag_id   = each.value.tag_id
  username = each.value.username
  tag_name = each.value.tag_name
  user_id  = each.value.user_id
}

