<? if(empty($items)) { ?>

<?=action_result('info', 'У вас нет ни одного входящего сообщения.');?>

<? } else { ?>

<table class="table table-hover">
	<thead>
		<tr>
			<th class="w50"></th>
			<th>Тема</th>
			<th>ФИО</th>
			<th>Контакты</th>
			<th class="w100">Действия</th>
		</tr>
	</thead>
	<tbody>
	<? foreach($items as $item) { ?>
		<tr>
			<td><?=$item['isRead'] == 0 ? fa('asterisk text-error') : '';?></td>
			<td><?=$item['title'];?></td>
			<td><?=$item['name'];?></td>
			<td>
				<div><?=fa('phone text-gray fa-fw mr5')?> <?=$item['phone'];?></div>
				<div><?=$item['email'] != '' ? fa('at text-gray fa-fw mr5').' '.$item['email'] : '';?></div>
			</td>
			<td class="w100">
				<?=anchor('admin/'.uri(2).'/view/'.$item['idItem'], fa('eye'), array('class' => 'btn btn-info btn-icon'));?>
			</td>
		</tr>
	<? } ?>
	</tbody>
</table>

<?=$this->pagination->create_links(); ?>

<? } ?>