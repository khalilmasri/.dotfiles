Vim�UnDo� �u���4���F�3���a�&бxg����r�   �   <autocmd CursorHold * silent call CocActionAsync('highlight')   Y                           `�8     _�                     N        ����                                                                                                                                                                                                                                                                                                                            N          V          v   (    `�8      �   M   O   �      !"function! s:show_documentation()5�_�                    N       ����                                                                                                                                                                                                                                                                                                                            N          W          v   (    `�8!     �   M   O   �      "    function! s:show_documentation()5�_�                    N        ����                                                                                                                                                                                                                                                                                                                            N           V                   `�8&     �   M   O        5�_�                    N        ����                                                                                                                                                                                                                                                                                                                            N           V                   `�8,     �   M   O   �      !"function! s:show_documentation()5�_�                    N       ����                                                                                                                                                                                                                                                                                                                                                             `�8-    �   M   O   �      !"function! s:show_documentation()�   N   W   �      -"  if (index(['vim','help'], &filetype) >= 0)   #"    execute 'h '.expand('<cword>')   "  elseif (coc#rpc#ready())   #"    call CocActionAsync('doHover')   "  else   8"    execute '!' . &keywordprg . " " . expand('<cword>')   "  endif   "endfunction5�_�                     Y        ����                                                                                                                                                                                                                                                                                                                                                             `�8�    �   X   Z   �      ="autocmd CursorHold * silent call CocActionAsync('highlight')5��