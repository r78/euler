#!/usr/bin/env ruby

h_exts = {
'rb' => 'ruby',
'rkt' => 'scheme',
'scm' => 'scheme',
'scala' => 'scala',
'sml' => 'sml',
'js' => 'javascript',
'java' => 'java',

'py' => 'python',
'php' => 'php',
'pl' => 'perl',
'lua' => 'lua',
'c' => 'c',
'ceylon' => 'ceylon',
'fs' => 'forth',
}

dirs = Dir.glob('problem*/').sort
dirs.each{|dir|
    num = dir.gsub(/problem|\//, '')
    langs = Dir.glob("#{dir}*.*")
    h_done = h_exts.clone
    langs.each{|l|
        ext = l.split('.')[-1]
        if ext =~ /rkt|scm/
            h_done.delete('rkt')
            h_done.delete('scm')
        else
            h_done.delete(ext)
        end
    }
    st_done = h_done.values.uniq.join(' ')
    puts "#{num}: #{st_done}"
}
