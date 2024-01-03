class role::manage_file (
  String content = 'Monday',
)
{

  file { 'day':
    path  => '/etc/puppetlabs/day.txt',
    content => "day=$content",
  }
 
}
