import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ch_app/features/chat_list/presentation/cubit/list_tile/conversation_list_tile_cubit.dart';
import 'package:test_ch_app/features/user/domain/entities/user_entities.dart';
import '../../domain/entities/conversation.dart';
import '../cubit/chat_list/chat_list_cubit.dart';
import '../widgets/widgets.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChatListCubit>(
          create: (BuildContext context) => ChatListCubit()
            ..loadConversations(), // Initialize your cubit here
        ),
      ],
      child: const Scaffold(
        appBar: CustomAppBar(),
        body: ChatListPage(),
      ),
    );
  }
}

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search bar or any other UI components you need
        Expanded(
          child: BlocBuilder<ChatListCubit, ChatListState>(
            builder: (context, state) {
              return state.maybeWhen(
                initial: () => _buildLoading(),
                loaded: (List<Conversation> conversations) =>
                    _buildLoaded(conversations),
                error: (String errorMessage) => _buildError(errorMessage),
                orElse: () => _buildLoading(), // Corrected method name here
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildLoaded(List<Conversation> conversations) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          color: Color(0xFFEDF2F6),
        ),
        itemCount: conversations.length,
        itemBuilder: (context, i) {
          return BlocProvider<ConversationListTileCubit>(
            create: (BuildContext context) =>
                ConversationListTileCubit()..loadListTitle(conversations[i]),
            child: const ConversationListTile(),
          );
        },
      ),
    );
  }

  Widget _buildError(String errorMessage) {
    return Center(
      child: Text("Failed to load conversations: $errorMessage"),
    );
  }
}

class ConversationListTile extends StatelessWidget {
  const ConversationListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConversationListTileCubit, ConversationListTileState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => _buildLoading(),
          loaded: (User? user) => _buildLoaded(user),
          error: (String errorMessage) => _buildError(errorMessage),
          orElse: () => _buildLoading(),
        );
      },
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildLoaded(User? user) {
    return ListTile(
      title: Text(
        '${user?.firstName} ${user?.lastName}',
        // ... rest of your ListTile content
      ),
    );
  }

  Widget _buildError(String errorMessage) {
    return Center(
      child: Text("Failed to load conversations: $errorMessage"),
    );
  }
}
