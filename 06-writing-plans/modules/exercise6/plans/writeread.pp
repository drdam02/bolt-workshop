plan exercise6::writeread (
  TargetSpec $nodes,
  String     $filename,
  String     $message = 'Hello',
) {
  run_task(
    'exercise6::write',
    $nodes,
    filename => $filename,
    message  => $message,
  )
  run_command("cat /tmp/${filename}", $nodes)
}
