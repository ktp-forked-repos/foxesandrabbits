%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  This file is part of Logtalk <http://logtalk.org/>
%  Copyright 1998-2016 Paulo Moura <pmoura@logtalk.org>
%
%  Licensed under the Apache License, Version 2.0 (the "License");
%  you may not use this file except in compliance with the License.
%  You may obtain a copy of the License at
%
%      http://www.apache.org/licenses/LICENSE-2.0
%
%  Unless required by applicable law or agreed to in writing, software
%  distributed under the License is distributed on an "AS IS" BASIS,
%  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%  See the License for the specific language governing permissions and
%  limitations under the License.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


:- object(tests,
	   extends(lgtunit)).
	:- uses(random, [reset_seed/0, set_seed/1]).
	:- set_logtalk_flag(unknown_entities, silent).
	:- set_logtalk_flag(events, allow).

  :- info([
    version is 0.1,
    author is 'Anne Ogborn',
    date is 2016/5/11,
    comment is 'Unit tests for Foxes and Rabbits example'
  ]).

  % can we reset the world?
  test(field_1) :-
    field::reset_world.

  % are bunnies bunnies?
  test(bunny_1) :-
    bunny::new(B),
    B::species(bunny).

  test(fox_1) :-
    fox::new(F),
    F::species(fox).

	test(field_2) :-
		Field = 'WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW \nWWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW \nWWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW  ^.^ WWWW WWWW WWWW WWWW WWWW WWWW WWWW \nWWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW \nWWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW \nWWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW \nWWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW \nWWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW  ^.^ WWWW WWWW WWWW >:c. WWWW \nWWWW WWWW  ^.^ WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW \nWWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW \nWWWW WWWW WWWW  ^.^ WWWW WWWW >:c. WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW \nWWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW \nWWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW \nWWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW  ^.^ WWWW WWWW WWWW WWWW WWWW WWWW WWWW \nWWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW \nWWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW WWWW \n',
		reset_seed,
		field::reset_world,
		% uncomment to generate line above
	%	with_output_to(atom(X),   field::print_field),writeq(X),
	  ^^set_text_output(''),
		field::print_field,
    ^^check_text_output(Field).

  cover(field).
  cover(bunny).
  cover(fox).

:- end_object.
