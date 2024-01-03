class role::manage_file (
  $content = 'Monday',
)
{

  file { 'day':
    path  => '/etc/puppetlabs/day.txt',
    content => "day=$content",
  }
 
}
