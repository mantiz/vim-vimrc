" Abort if xptemplate is not loaded
if (!exists('g:__XPT_VIM__'))
	finish
endif

XPTemplate priority=personal

XPT ns
namespace `NAMESPACE^;

`cursor^
..XPT

XPT interface
interface `INTERFACE^
{
	`cursor^
}
..XPT

XPT class
class `CLASS^
{

	public function __construct(`CONSTRUCTOR_ARGUMENTS^)
	{
		`CONSTRUCTOR_CONTENT^
	}

	`cursor^

}
..XPT
