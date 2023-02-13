plan example::testfact (
  TargetSpec $targets,
) {
  run_plan(facts, targets => $targets)
  #$centos_targets = get_targets($targets).filter |$n| { $n.facts['os']['name'] == 'CentOS' }
  get_targets($targets).each |$target| {
    $output = $target.facts['os']['name']
    run_task('exec', $target, command => "echo $output")
    run_task('example::sendemail', 'sgsedemonix0.se.automationdemos.com', factoutput => "The fact value is $output")
  }
  #run_task('exec', $centos_targets, command => "echo $targets")
  
}
